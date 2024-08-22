from flask import Flask, request, jsonify
import mysql.connector
from config import db_config  # Import the db_config

app = Flask(__name__)

# Database connection


def get_db_connection():
    return mysql.connector.connect(**db_config)


@app.route('/users', methods=['GET'])
def get_users():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute('SELECT * FROM users')
    users = cursor.fetchall()
    cursor.close()
    conn.close()
    return jsonify(users)


@app.route('/users', methods=['POST'])
def add_user():
    conn = get_db_connection()
    cursor = conn.cursor()
    new_user = request.json
    cursor.execute('INSERT INTO users (name, email) VALUES (%s, %s)',
                   (new_user['name'], new_user['email']))
    conn.commit()
    cursor.close()
    conn.close()
    return jsonify({'message': 'User added!'}), 201


if __name__ == '__main__':
    app.run(debug=True)
