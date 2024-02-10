import mysql.connector

mydb = mysql.connector.connect(
  host = "localhost",
  user = "root",
  password = "pass@1234",
)

mycursor = mydb.cursor()

mycursor.execute("create database employee2")
mycursor.execute("show databases")

myresult = mycursor.fetchall()
print(myresult)