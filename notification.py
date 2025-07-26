from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail, Message
from app import create_app, db
from app.models import Server, HealthCheck
import time
import re
import json
from datetime import datetime, timedelta, timezone

# Initialize app and context
app = create_app()
app.app_context().push()

# Load config from JSON
with open("appsettings.json") as f:
    mail_config = json.load(f)

# Set up Flask-Mail configuration
app.config.update(
    MAIL_SERVER=mail_config.get("MAIL_SERVER"),
    MAIL_PORT=mail_config.get("MAIL_PORT"),
    MAIL_USE_TLS=mail_config.get("MAIL_USE_TLS", True),
    MAIL_USERNAME=mail_config.get("MAIL_USERNAME"),
    MAIL_PASSWORD=mail_config.get("MAIL_PASSWORD"),
    MAIL_DEFAULT_SENDER=mail_config.get("MAIL_USERNAME")
)
mail = Mail(app)
# fecth default reciepnts from appsetings.json
default_recipients = list(mail_config.get("default_mail_recipients", {}).values())

# Split and validate multiple email addresses
def get_valid_emails(email_str):
    if not email_str:
        return []
    return [
        email.strip()
        for email in email_str.split(',')
        if re.match(r"[^@]+@[^@]+\.[^@]+", email.strip())
    ]

# ---------------- helpers ----------------
def send_down_email(server, issue_lines):
    subject = f"🚨 Alert: Issue on {server.name} machine"
    body = build_body(server, issue_lines, faulty=True)

    recipients_db = get_valid_emails(server.email_id_prim)
    recipients = default_recipients + recipients_db
      
    if not recipients:
        return

    msg = Message(subject, recipients=recipients, body=body)
    msg.html = body
    try:
        mail.send(msg)
        print(f"[ALERT] DOWN mail sent to {server.email_id_prim} for {server.name}")
    except Exception as e:
        print(f"[ERROR] Failed to send DOWN email to {server.email_id_prim}: {e}")

def send_up_email(server):
    subject = f"✅ Server {server.name} is Healthy"
    body = build_body(server, [], faulty=False)

    recipients_db = get_valid_emails(server.email_id_prim)
    recipients = default_recipients + recipients_db
    if not recipients:
        return

    msg = Message(subject, recipients=recipients, body=body)
    msg.html = body
    try:
        mail.send(msg)
        print(f"[INFO] UP mail sent to {server.email_id_prim} for {server.name}")
    except Exception as e:
        print(f"[ERROR] Failed to send UP email to {server.email_id_prim}: {e}")

def build_body(server, issue_lines, faulty=True):
    color = "#d9534f" if faulty else "#28a745"
    title = "🚨 Server Health Alert" if faulty else "✅ Server Recovery Notification"

    if faulty:
        rows = "".join(
            f"<tr>"
            f"<td style='padding:8px 4px; border-bottom:1px solid #eee;'>{line.split(':')[0]}</td>"
            f"<td style='padding:8px 4px; color:#d9534f; font-weight:bold; border-bottom:1px solid #eee;'>{line.split(':')[1].strip()}</td>"
            f"</tr>"
            for line in issue_lines
        )
    else:
        rows = "<tr><td colspan='2' style='padding:8px 4px; color:#28a745; font-weight:bold;'>All monitored parameters are healthy.</td></tr>"

    return f"""
    <html>
    <body style="font-family:Segoe UI, sans-serif; background-color:#f9f9f9; padding:20px;">
        <div style="max-width:600px; margin:auto; background-color:#ffffff; padding:20px; border:1px solid #ddd; border-radius:5px;">
            <h2 style="color:{color};">{title}</h2>
            <p><strong>Server:</strong> {server.name}<br>
               <strong>IP Address:</strong> {server.ip_address}</p>
            <table style="width:100%; border-collapse:collapse; margin-top:10px;">
                <thead>
                    <tr>
                        <th style="text-align:left; padding:8px 4px; border-bottom:2px solid #ddd;">Parameter</th>
                        <th style="text-align:left; padding:8px 4px; border-bottom:2px solid #ddd; white-space:nowrap;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    {rows}
                </tbody>
            </table>
            <p style="margin-top:20px;">Regards,<br><strong>RMES IT Management System</strong></p>
        </div>
    </body>
    </html>
    """

# ---------------- main notifier ----------------
def check_and_notify():
    now_utc = datetime.now(timezone.utc)
    servers = Server.query.all()

    for server in servers:
        health = HealthCheck.query.filter_by(server_id=server.id).first()
        if not health:
            continue  # No health data

        # 1) decide if an alert is needed
        alert_needed = (
            server.status == 'Down' or
            any(getattr(health, port) == 'Closed' for port in ['port_22', 'port_80', 'port_8080', 'port_5432']) or
            (health.storage is not None and health.storage > 85)
        )
        print(alert_needed)
        # print(alert_needed)
        # build issue lines for email (only used when faulty)
        issue_lines = []
        if server.status == 'Down':
            issue_lines.append("Machine Status: DOWN")

        port_labels = {
            'port_22': '22 (SSH)',
            'port_80': '80 (HTTP)',
            'port_8080': '8080 (HTTP-Alt)',
            'port_5432': '5432 (PostgreSQL)'
        }
        for port_key, label in port_labels.items():
            if getattr(health, port_key) == 'Closed':
                issue_lines.append(f"Port {label}: CLOSED")

        if health.storage is not None and int(health.storage) > 85:
            issue_lines.append(f"Storage Usage: {health.storage}% (HIGH)")

        # if no email configured, just set states and continue
        if not server.email_id_prim:
            health.healthcheck = 'Faulty' if alert_needed else 'Healthy'
            if not alert_needed:
                health.alarm_status = False
                health.last_alert_sent = None
            db.session.commit()
            continue

        # --------------------
        # Mode 0 (Notify once)
        # --------------------
        if server.notification_mode == 0:
            if alert_needed:
                # send only once per outage
                if not health.alarm_status:
                    send_down_email(server, issue_lines)
                    print("Need to sent mail")
                    health.alarm_status = True
                    health.healthcheck = 'Faulty'
                    health.last_alert_sent = now_utc
            else:
                # recovered -> send UP mail and reset
                if health.alarm_status:
                    send_up_email(server)
                health.alarm_status = False
                health.healthcheck = 'Healthy'
                health.last_alert_sent = None

        # --------------------------------------
        # Mode 1 (Repeat until server is healthy)
        # --------------------------------------
        else:
            interval_minutes = server.notify_interval  # fallback if None
            threshold = timedelta(minutes=interval_minutes)

            if alert_needed:
                if (not health.last_alert_sent) or (now_utc - (health.last_alert_sent.replace(tzinfo=timezone.utc) if health.last_alert_sent.tzinfo is None else health.last_alert_sent) >= threshold):
                    send_down_email(server, issue_lines)
                    health.alarm_status = True
                    health.healthcheck = 'Faulty'
                    health.last_alert_sent = now_utc
            else:
                # recovered -> send one recovery mail if it was faulty
                if health.alarm_status:
                    send_up_email(server)
                health.alarm_status = False
                health.healthcheck = 'Healthy'
                health.last_alert_sent = None

        db.session.commit()

# --- Scheduler / direct run ---
if __name__ == "__main__":
    check_and_notify()
