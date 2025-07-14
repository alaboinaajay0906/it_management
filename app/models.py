from . import db

class Server(db.Model):
    id = db.Column(db.Integer, primary_key=True)  # Auto-incrementing DB ID
    machine_id = db.Column(db.String(100), unique=True, nullable=False)  # Your custom Machine ID
    machine_code = db.Column(db.String(100), nullable=False)
    name = db.Column(db.String(100), nullable=False)
    os = db.Column(db.String(100), nullable=False)
    ip_address = db.Column(db.String(50), nullable=False)
    owner = db.Column(db.String(100))
    status = db.Column(db.String(20))
    specifications = db.Column(db.Text)
    notes = db.Column(db.Text)
    port_22 = db.Column(db.String(10), default='Unknown')
    port_80 = db.Column(db.String(10), default='Unknown')
    port_5432 = db.Column(db.String(10), default='Unknown')
    last_checked = db.Column(db.DateTime)

