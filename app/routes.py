from flask import Blueprint, render_template, redirect, url_for, request, Response, g, abort, flash, current_app
from .models import Server
from .forms import ServerForm
from . import db
from functools import wraps
import re
from werkzeug.utils import secure_filename
import pandas as pd
main = Blueprint('main', __name__)
import openpyxl
import psycopg2
import csv
import os
import sys
import getpass
from sqlfluff import lint, fix
from colorama import init, Fore, Back, Style
from datetime import datetime

# Authentication configuration
VALID_USERNAME = 'itadmin'
VALID_PASSWORD = 'IT@2025'

class BasicAuthUser:
    def __init__(self, auth):
        self.is_authenticated = auth is not None and \
                              auth.username == VALID_USERNAME and \
                              auth.password == VALID_PASSWORD
        self.username = auth.username if self.is_authenticated else None
        self.is_active = True
        self.is_anonymous = not self.is_authenticated

    def get_id(self):
        return self.username

def basic_auth_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        auth = request.authorization
        if not auth:
            return authenticate()
        user = BasicAuthUser(auth)
        if not user.is_authenticated:
            return authenticate()
        g.current_user = user
        return f(*args, **kwargs)
    return decorated

def authenticate():
    """Send 401 response that enables basic auth"""
    return Response(
        'Could not verify your access level for that URL.\n'
        'You have to login with proper credentials', 401,
        {'WWW-Authenticate': 'Basic realm="Login Required"'}
    )

@main.before_request
def load_user():
    auth = request.authorization
    g.current_user = BasicAuthUser(auth) if auth else BasicAuthUser(None)

@main.context_processor
def inject_user():
    return dict(current_user=g.get('current_user', BasicAuthUser(None)))
from collections import Counter
# Server count and health
@main.route('/')
@main.route('/dashboard')
# def dashboard():
#     servers = Server.query.all()
#     total_servers = len(servers)
    
#     if not servers:
#         return render_template('dashboard.html',
#             servers=[],
#             total_servers=0,
#             up_servers=0,
#             maintenance_servers=0,
#             down_servers=0,
#             health_status="No Data",
#             health_color="#4895ef",
#             health_percentage=0
#         )

#     status_counts = Counter(s.status for s in servers)
#     up_servers = status_counts.get('Up', 0)
#     maintenance_servers = status_counts.get('Maintenance', 0)
#     down_servers = status_counts.get('Down', 0)

#     try:
#         health_percentage = (up_servers / total_servers) * 100
#     except ZeroDivisionError:
#         health_percentage = 0

#     if health_percentage >= 90:
#         health_status = "Excellent"
#         health_color = "green"
#     elif health_percentage >= 75:
#         health_status = "Good"
#         health_color = "#2a9d8f"
#     elif health_percentage >= 50:
#         health_status = "Fair"
#         health_color = "#f8961e"
#     else:
#         health_status = "Critical"
#         health_color = "#f94144"

#     return render_template('dashboard.html',
#         servers=servers,
#         total_servers=total_servers,
#         up_servers=up_servers,
#         maintenance_servers=maintenance_servers,
#         down_servers=down_servers,
#         health_percentage=health_percentage,
#         health_status=health_status,
#         health_color=health_color
#     )
def dashboard():
    ip_filter = request.args.get('ip', '').strip()

    if ip_filter:
        servers = Server.query.filter(Server.ip_address.like(f"%{ip_filter}%")).all()
    else:
        servers = Server.query.all()

    total_servers = len(servers)

    if not servers:
        return render_template('dashboard.html',
            servers=[],
            total_servers=0,
            up_servers=0,
            maintenance_servers=0,
            down_servers=0,
            health_status="No Data",
            health_color="#4895ef",
            health_percentage=0,
            ip_filter=ip_filter
        )

    status_counts = Counter(s.status for s in servers)
    up_servers = status_counts.get('Up', 0)
    maintenance_servers = status_counts.get('Maintenance', 0)
    down_servers = status_counts.get('Down', 0)

    try:
        health_percentage = (up_servers / total_servers) * 100
    except ZeroDivisionError:
        health_percentage = 0

    if health_percentage >= 90:
        health_status = "Excellent"
        health_color = "green"
    elif health_percentage >= 75:
        health_status = "Good"
        health_color = "#2a9d8f"
    elif health_percentage >= 50:
        health_status = "Fair"
        health_color = "#f8961e"
    else:
        health_status = "Critical"
        health_color = "#f94144"

    return render_template('dashboard.html',
        servers=servers,
        total_servers=total_servers,
        up_servers=up_servers,
        maintenance_servers=maintenance_servers,
        down_servers=down_servers,
        health_percentage=health_percentage,
        health_status=health_status,
        health_color=health_color,
        ip_filter=ip_filter
    )
# Add server
@main.route('/add-server', methods=['GET', 'POST'])
@basic_auth_required
def add_server():
    form = ServerForm()
    if form.validate_on_submit():
        server = Server(
            machine_id=form.machine_id.data,
            machine_code=form.machine_code.data,
            name=form.name.data,
            os=form.os.data,
            ip_address=form.ip_address.data,
            owner=form.owner.data,
            status=form.status.data,
            specifications=form.specifications.data,
            notes=form.notes.data,
            department=form.department.data,
            email_id_prim=form.email_id_prim.data,
            purpose=form.purpose.data
        )
        db.session.add(server)
        db.session.commit()
        return redirect(url_for('main.dashboard'))
    return render_template('server_form.html', form=form)

#edit button
@main.route('/edit-server/<int:id>', methods=['GET', 'POST'])
@basic_auth_required
def edit_server(id):
    server = Server.query.get_or_404(id)
    form = ServerForm(obj=server)
    if form.validate_on_submit():
        form.populate_obj(server)
        db.session.commit()
        return redirect(url_for('main.dashboard'))
    return render_template('server_form.html', form=form)

# delete button
@main.route('/delete-server/<int:id>', methods=['POST'])
@basic_auth_required
def delete_server(id):
    server = Server.query.get_or_404(id)
    db.session.delete(server)
    db.session.commit()
    return redirect(url_for('main.dashboard'))

# logout button
@main.route('/logout')
def logout():
    """Basic auth logout workaround"""
    return Response(
        'Logged out. Please close your browser to complete logout.', 401,
        {'WWW-Authenticate': 'Basic realm="Logged Out"'}
    )

# import excel
@main.route('/import-servers', methods=['GET', 'POST'])
@basic_auth_required
def import_servers():
    if request.method == 'POST':
        file = request.files.get('file')
        if not file or file.filename == '':
            flash('No file selected.', 'danger')
            return redirect(request.url)

        filename = secure_filename(file.filename)
        if not filename.endswith(('.xlsx', '.xls')):
            flash('Invalid file format. Please upload an Excel file.', 'danger')
            return redirect(request.url)

        # Optional: file size check
        file.seek(0, 2)
        file_size = file.tell()
        file.seek(0)
        if file_size > 2 * 1024 * 1024:  # 2MB limit
            flash('File too large. Maximum size allowed is 2MB.', 'danger')
            return redirect(request.url)

        try:
            df = pd.read_excel(file)
        except Exception as e:
            flash(f'Error reading Excel file: {str(e)}', 'danger')
            return redirect(request.url)

        required_columns = {'name', 'os','machine_id','machine_code', 'specifications', 'ip_address', 'owner', 'status','notes'}

        if not required_columns.issubset(set(col.lower() for col in df.columns)):
            flash('Missing required columns in Excel file.', 'danger')
            return redirect(request.url)

        existing_ips = {s.ip_address for s in Server.query.with_entities(Server.ip_address).all()}

        try:
            for index, row in df.iterrows():
                # Validate required fields
                if pd.isnull(row[['name', 'os','machine_id','machine_code', 'specifications' ,'ip_address', 'owner', 'status','notes']]).any():
                    flash(f'Missing required data in row {index + 2}.', 'danger')
                    return redirect(request.url)

                ip = str(row['ip_address']).strip()
                if not re.match(r'^\d{1,3}(\.\d{1,3}){3}$', ip):
                    flash(f'Invalid IP address format in row {index + 2}: {ip}', 'danger')
                    return redirect(request.url)

                if ip in existing_ips:
                    flash(f'Duplicate IP address found in row {index + 2}: {ip}', 'danger')
                    return redirect(request.url)

                new_server = Server(
                    name=str(row['name']).strip(),
                    os=str(row['os']).strip(),
                    machine_id=str(row['machine_id']).strip(),
                    machine_code=str(row['machine_code']).strip(),
                    specifications=str(row['specifications']).strip(),
                    ip_address=ip,
                    owner=str(row['owner']).strip(),
                    status=str(row.get('status', '')).strip(),
                    notes=str(row.get('notes', '')).strip()
                )
                db.session.add(new_server)
                existing_ips.add(ip)  # avoid duplicates within the same file

            db.session.commit()
            flash('Servers imported successfully!', 'success')
            return redirect(url_for('main.dashboard'))

        except Exception as e:
            db.session.rollback()
            flash(f'Error during import: {str(e)}', 'danger')
            return redirect(request.url)

    return render_template('import_form.html')

# db scripts tool

@main.route('/db-scripts')
def db_scripts():
    # Get list of customers from database
    try:
        conn = psycopg2.connect(host='localhost', port=5432, 
                               database='db_version_control', 
                               user="postgres", password="hotandcold")
        cur = conn.cursor()
        cur.execute("SELECT id, customer_name, customer_details FROM public.customer_info ORDER BY id ASC")
        customers = [{'id': row[0], 'name': row[1], 'details': row[2]} for row in cur.fetchall()]
        conn.close()
    except Exception as e:
        flash('Failed to connect to database: ' + str(e), 'danger')
        customers = []
    
    return render_template('db_scripts.html', customers=customers)

@main.route('/get-db-scripts', methods=['POST'])
def get_db_scripts():
    operation_type = request.form.get('operation_type')
    customer_id = request.form.get('customer_id')
    current_version = request.form.get('current_version')
    target_version = request.form.get('target_version')
    client_ip = request.form.get('client_ip')
    client_db = request.form.get('client_db')
    client_password = request.form.get('client_password')
    
    try:
        # Connect to the version control database
        conn = psycopg2.connect(host='192.168.60.67', port=5432, 
                               database='db_version_control', 
                               user="postgres", password="hotandcold")
        cur = conn.cursor()
        
        # If current_version not provided, try to get from client DB
        if not current_version and client_ip and client_db and client_password:
            try:
                client_conn = psycopg2.connect(host=client_ip, port=5432, 
                                             database=client_db, 
                                             user="rmtest", password=client_password)
                client_cur = client_conn.cursor()
                client_cur.execute("SELECT version FROM public.version WHERE type = 'db_version'")
                current_version = str(client_cur.fetchone()[0])
                client_conn.close()
            except Exception as e:
                flash(f'Failed to get version from client DB: {str(e)}', 'warning')
        
        if not current_version:
            flash('Current version is required', 'danger')
            return redirect(url_for('main.db_scripts'))
        
        # Build the SQL query
        sql = f"""
            SELECT ci.id, person_responsible, comments, db_script, version 
            FROM public.db_scripts as dbs 
            INNER JOIN public.customer_info as ci ON dbs.customer_id = ci.id 
            WHERE dbs.version > {current_version}
        """
        
        if target_version:
            sql += f" AND dbs.version <= {target_version}"
        
        sql1 = sql + " AND customer_id = 1 ORDER BY dbs.version ASC;"
        sql2 = sql + f" AND customer_id = {customer_id} ORDER BY dbs.version ASC;"
        
        # Execute queries
        data = []
        if customer_id == "1":
            cur.execute(sql1)
            data = cur.fetchall()
        else:
            cur.execute(sql1)
            data.extend(cur.fetchall())
            cur.execute(sql2)
            data.extend(cur.fetchall())
        
        if not data:
            return render_template('db_scripts.html', 
                                script_results="Your database version is up to date!\nPlease wait for new db commits",
                                customers=get_customers())
        
        # Create SQL file
        upload_folder = os.path.join(current_app.root_path, 'static', 'downloads')
        os.makedirs(upload_folder, exist_ok=True)
        filename = f"db_scripts_{datetime.now().strftime('%Y%m%d_%H%M%S')}.sql"
        filepath = os.path.join(upload_folder, filename)
        
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write("--fileStatus=0\n\n")
            for script in data:
                f.write("--Customer id = " + str(script[0]) + "\n")
                if script[1]:
                    f.write("-- " + script[1] + "\n")
                if script[2]:
                    f.write("--" + script[2] + "\n\n")
                f.write(script[3] + ";" + "\n\n")
                f.write(f"UPDATE public.version SET version = {script[4]} WHERE type = 'db_version';\n\n")
        
        # Prepare results for display
        result_text = f"Scripts generated for customer {customer_id}\n"
        result_text += f"From version {current_version} to {target_version if target_version else 'latest'}\n\n"
        result_text += f"Saved to file: {filename}\n\n"
        
        return render_template('db_scripts.html', 
                            script_results=result_text,
                            download_url=url_for('static', filename=f'downloads/{filename}'),
                            customers=get_customers())
        
    except Exception as e:
        flash(f'Error getting DB scripts: {str(e)}', 'danger')
        return redirect(url_for('main.db_scripts'))

@main.route('/put-db-scripts', methods=['POST'])
def put_db_scripts():
    operation_type = request.form.get('operation_type')
    customer_id = request.form.get('customer_id')
    db_script = request.form.get('db_script')
    comments = request.form.get('comments')
    person_responsible = request.form.get('person_responsible')
    
    try:
        # Validate SQL syntax
        issues = lint(db_script, dialect='postgres')
        critical_issues = [
            issue for issue in issues
            if issue.get('code', '').startswith('PRS') or issue.get('code', '').startswith('L0')
        ]
        
        if critical_issues:
            error_msg = "SQL Syntax Error(s):\n"
            for issue in critical_issues:
                error_msg += f"[Line {issue.get('start_line_no', '?')}] {issue.get('code', 'UNK')}: {issue.get('description', 'Unknown error')}\n"
            return render_template('db_scripts.html', 
                                script_results=error_msg,
                                customers=get_customers())
        
        # Connect to database and insert script
        conn = psycopg2.connect(host='192.168.60.67', port=5432, 
                               database='db_version_control', 
                               user="postgres", password="hotandcold")
        cur = conn.cursor()
        
        insert_sql = """
            INSERT INTO public.db_scripts (db_script, customer_id, comments, person_responsible)
            VALUES (%s, %s, %s, %s) RETURNING version;
        """
        cur.execute(insert_sql, (db_script, customer_id, comments, person_responsible))
        version = cur.fetchone()[0]
        conn.commit()
        conn.close()
        
        result_text = f"DB Script inserted successfully!\n"
        result_text += f"Version number: {version}\n"
        result_text += f"Please use this in your code and commit message.\n"
        result_text += f"Thank you {person_responsible}! Have a good day!"
        
        return render_template('db_scripts.html', 
                            script_results=result_text,
                            customers=get_customers())
        
    except Exception as e:
        flash(f'Error submitting DB script: {str(e)}', 'danger')
        return redirect(url_for('main.db_scripts'))

def get_customers():
    """Helper function to get customers list"""
    try:
        conn = psycopg2.connect(host='192.168.60.67', port=5432, 
                               database='db_version_control', 
                               user="postgres", password="hotandcold")
        cur = conn.cursor()
        cur.execute("SELECT id, customer_name, customer_details FROM public.customer_info ORDER BY id ASC")
        customers = [{'id': row[0], 'name': row[1], 'details': row[2]} for row in cur.fetchall()]
        conn.close()
        return customers
    except:
        return []
