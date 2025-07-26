from flask_wtf import FlaskForm
from wtforms import StringField, SelectField, TextAreaField, SubmitField, PasswordField, IntegerField, validators
from wtforms.validators import DataRequired, Optional, ValidationError, NumberRange

class ServerForm(FlaskForm):
    machine_id = StringField('Machine ID')
    machine_code = StringField('Machine Code')
    name = StringField('Machine Name', validators=[DataRequired()])
    os = SelectField('Operating System', 
                     choices=[('Linux', 'Linux'), ('Windows', 'Windows')], 
                     validators=[DataRequired()])
    ip_address = StringField('IP Address', validators=[DataRequired()])
    machine_psw = PasswordField('Machine Password', validators=[DataRequired()])
    owner = StringField('Owner', validators=[DataRequired()])
    department = SelectField(
        'Department',
        choices=[
            ('CST', 'CST'), 
            ('Product Owner', 'Product Owner'),
            ('Product Enginer', 'Product Enginer'),
            ('Digital Marketing', 'Digital Marketing'),
            ('Data science', 'Data science'),
            ('Projects/FSE', 'Projects/FSE'),
            ('IT', 'IT'),
            ('Sales', 'Sales'),
            ('External', 'External')
        ],
        validators=[DataRequired()]
    )
    purpose = SelectField(
        'Check system for',
        choices=[
            ('RMEYE', 'RMEYE'),
            ('Jenkins', 'Jenkins'),
            ('only for monitoring system health', 'only for monitoring system health')
        ]
    )
    email_id_prim = StringField('Notify to', validators=[DataRequired()])
    specifications = TextAreaField('Specifications')
    notes = TextAreaField('Notes')
    submit = SubmitField('Submit')
    status = SelectField(
        'Status',
        choices=[('Up', 'Up'), ('maintenance', 'maintenance'), ('Down', 'Down'), ('No Data', 'No Data')]
    ) 
    notification_mode = SelectField(
        'Notification Mode',
        choices=[
            (0, 'Notify once on Failure'),
            (1, 'Notify repeatedly until server is healthy')
        ],
        coerce=int
    )
    notify_interval = IntegerField(
        'Notify Interval (min)',
        validators=[
            validators.Optional(),
            NumberRange(min=1, message="Interval must be at least 1 minute")
        ]
    )

    def validate(self, extra_validators=None):
        # Initial validation
        if not super().validate(extra_validators):
            return False

        # Custom validation for notify interval when mode is "repeatedly"
        if self.notification_mode.data == 1 and not self.notify_interval.data:
            self.notify_interval.errors.append('Notify interval is required when selecting "Notify repeatedly"')
            return False

        return True