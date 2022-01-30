from flask import render_template
import db_conn
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():

    with app.app_context():
        cur = db_conn.get_db().cursor()
        cur.execute('SELECT * FROM heroes')
        result = cur.fetchall()

    return render_template('index.html', hero_list=result)