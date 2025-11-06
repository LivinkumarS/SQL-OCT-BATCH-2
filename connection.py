import mysql.connector

db=mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="student"
)

curser=db.cursor()

curser.execute("SELECT * FROM actor")

print(curser.fetchall())