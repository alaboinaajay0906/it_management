from . import db

class Server(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    machine_id = db.Column(db.String(100), unique=True, nullable=False)
    machine_code = db.Column(db.String(100), nullable=False)
    name = db.Column(db.String(100), nullable=False)
    os = db.Column(db.String(100), nullable=False)
    ip_address = db.Column(db.String(50), nullable=False)
    owner = db.Column(db.String(100))
    specifications = db.Column(db.Text)
    notes = db.Column(db.Text)
    department = db.Column(db.String(240))
    email_id_prim = db.Column(db.String(120))
    purpose = db.Column(db.String(240))  # This acts as 'service' (e.g., 'RM', 'Jenkins')
    status = db.Column(db.String(20)) # 'Up' or 'Down'
    machine_psw = db.Column(db.String(20))    

    # Optional relationship to health_check
    health = db.relationship('health_check', backref='server', uselist=False, cascade="all, delete-orphan")

class health_check(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    server_id = db.Column(db.Integer, db.ForeignKey('server.id'), nullable=False)
    port_22 = db.Column(db.String(10), default='Unknown')
    port_80 = db.Column(db.String(10), default='Unknown')
    port_8080 = db.Column(db.String(10), default='Unknown')
    port_5432 = db.Column(db.String(10), default='Unknown')
    storage = db.Column(db.String(10))
    last_checked = db.Column(db.DateTime)
