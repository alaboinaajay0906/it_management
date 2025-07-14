from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, SelectField
from wtforms.validators import DataRequired

class ServerForm(FlaskForm):
    machine_id = StringField('Machine ID')
    machine_code = StringField('Machine Code')
    name = StringField('Machine Name', validators=[DataRequired()])
    os = StringField('Operating System', validators=[DataRequired()])
    ip_address = StringField('IP Address')
    owner = StringField('Owner')
    status = SelectField('Status', choices=[('Up', 'Up'), ('maintenance', 'maintenance'), ('Down', 'Down'), ('No Data', 'No Data')])
    specifications = TextAreaField('Specifications')
    notes = TextAreaField('Notes')
    submit = SubmitField('Submit')
