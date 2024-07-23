# Flask MySQL API

A simple Flask API that connects to a MySQL database.

## Requirements

- Python 3.8+
- MySQL

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/flask_mysql_api.git
    cd flask_mysql_api
    ```

2. Create and activate a virtual environment:
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
    ```

3. Install the dependencies:
    ```bash
    pip install -r requirements.txt
    ```

4. Configure MySQL connection in `app.py`:
    ```python
    db_config = {
        'user': 'your_mysql_user',
        'password': 'your_mysql_password',
        'host': 'localhost',
        'database': 'flaskdb'
    }
    ```

5. Create the database and table:
    ```sql
    CREATE DATABASE flaskdb;
    USE flaskdb;
    CREATE TABLE users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100),
        email VARCHAR(100)
    );
    ```

## Running the Application

```bash
python app.py
