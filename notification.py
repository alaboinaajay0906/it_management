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
    MAIL_DEFAULT_SENDER=mail_config.get("MAIL_USERNAME")  # Hardcoded sender
)
mail = Mail(app)
# frequency for email send
alert_cooldown = timedelta(minutes=1)  # adjust as needed
now_utc = datetime.now(timezone.utc)

# Split and validate multiple email addresses
def get_valid_emails(email_str):
    if not email_str:
        return []
    return [
        email.strip()
        for email in email_str.split(',')
        if re.match(r"[^@]+@[^@]+\.[^@]+", email.strip())
    ]

# Email send function
def check_and_notify():
    servers = Server.query.all()
    for server in servers:
        
        health = HealthCheck.query.filter_by(server_id=server.id).first()
        
        if not health:
            continue  # No health data

        # if health.healthcheck == 'Healthy':
        #     # print(f"{server.name} healthy! Notification Alert not required.")
        #     continue

        alert_needed = (
            server.status == 'Down' or
            any(getattr(health, port) == 'Closed' for port in ['port_22', 'port_80', 'port_8080', 'port_5432']) or
            (health.storage and health.storage > 85)
        )

        if alert_needed and server.email_id_prim:
            if health.ack:
                print(f"[INFO] Email notifications for {server.email_id_prim} are currently snoozed. "
      "Click on 'UNSNOOZE' in dashboard to resume receiving notifications.")
                continue

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

            if health.storage and int(health.storage) > 85:
                issue_lines.append(f"Storage Usage: {health.storage}% (HIGH)")

            #  Cooldown logic
            if not health.last_alert_sent or now_utc - health.last_alert_sent.replace(tzinfo=timezone.utc) > alert_cooldown:
                subject = f"🚨 Alert: Issue on {server.name} machine"
                body = f"""
                <html>
                <body style="font-family:Segoe UI, sans-serif; background-color:#f9f9f9; padding:20px;">
                    <div style="max-width:600px; margin:auto; background-color:#ffffff; padding:20px; border:1px solid #ddd; border-radius:5px;">
                        <h2 style="color:#d9534f;">🚨 Server Health Alert</h2>
                        <p><strong>Server:</strong> {server.name}<br>
                           <strong>IP Address:</strong> {server.ip_address}</p>
                        <p style="margin-top:20px;"><strong>The following issue(s) were detected:</strong></p>
                        <table style="width:100%; border-collapse:collapse; margin-top:10px;">
                            <thead>
                                <tr>
                                <th style="text-align:left; padding:8px 4px; border-bottom:2px solid #ddd;">Parameter</th>
                                <th style="text-align:left; padding:8px 4px; border-bottom:2px solid #ddd; white-space:nowrap;">Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                    {''.join(
                                        f"<tr>"
                                        f"<td style='padding:8px 4px; border-bottom:1px solid #eee;'>{line.split(':')[0]}</td>"
                                        f"<td style='padding:8px 4px; color:#d9534f; font-weight:bold; border-bottom:1px solid #eee;'>{line.split(':')[1].strip()}</td>"
                                        f"</tr>"
                                        for line in issue_lines
                                    )}
                                </tbody>
                        </table>
                        <p style="margin-top:20px;">Please investigate and resolve the above issue(s) at the earliest convenience.</p>
                        <p style="margin-top:30px;">Regards,<br><strong>RMES IT Management System</strong></p>
                    </div>
                </body>
                </html>
                """
                try:
                    recipients = get_valid_emails(server.email_id_prim)
                    msg = Message(subject, recipients=recipients, body=body)
                    msg.html = body
                    mail.send(msg)
                    health.healthcheck = 'Faulty'
                    health.last_alert_sent = now_utc
                    db.session.commit()
                    print(f"Server {server.name} found unhealthy! Email sent to {server.email_id_prim}")
                except Exception as e:
                    print(f"Failed to send email to {server.email_id_prim}: {e}")
            else:
                print(f"[INFO] Email already sent recently to {server.email_id_prim}, skipping...")
        else:
            health.healthcheck = 'Healthy'
            db.session.commit()
            print(f"\033[92m[INFO] Server {server.name}  is Healthy!\033[0m")
            

# --- Scheduler ---
if __name__ == "__main__":
        check_and_notify()

