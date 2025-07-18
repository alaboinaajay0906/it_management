from flask_wtf import FlaskForm
from wtforms import StringField, SelectField, TextAreaField, SubmitField
from wtforms.validators import DataRequired

class ServerForm(FlaskForm):
    machine_id = StringField('Machine ID')
    machine_code = StringField('Machine Code')
    name = StringField('Machine Name', validators=[DataRequired()])
    os = SelectField('Operating System', choices=[('Linux', 'Linux'), ('Windows', 'Windows')], validators=[DataRequired()])
    ip_address = StringField('IP Address', validators=[DataRequired()])
    owner = StringField('Owner')
    department = SelectField('Department', choices=[('CST', 'CST'), ('Product Owner', 'Product Owner'), ('Product Enginer', 'Product Enginer'), ('Digital Marketing', 'Digital Marketing'), ('Data science', 'Data science'), ('Projects/FSE', 'Projects/FSE'), ('IT', 'IT'), ('Sales', 'Sales'), ('External', 'External')],  validators=[DataRequired()])
    purpose = SelectField('Check system for', choices=[('RMEYE', 'RMEYE'), ('Jenkins', 'Jenkins'), ('only for monitoring system health', 'only for monitoring system health')])
    email_id_prim = StringField('Notify to', validators=[DataRequired()])
    specifications = TextAreaField('Specifications')
    notes = TextAreaField('Notes')
    submit = SubmitField('Submit')
    status = SelectField('Status', choices=[('Up', 'Up'), ('maintenance', 'maintenance'), ('Down', 'Down'), ('No Data', 'No Data')])
