import sqlite3

connection = sqlite3.connect("sray_db.db")

crsr = connection.cursor()

sql_command = """SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID > 100;"""

crsr.execute(sql_command)

connection.close()
