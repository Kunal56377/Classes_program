import mysql.connector

mydb = mysql.connector.connect(
  host = "localhost",
  user = "root",
  password = "pass@1234",
  database = "employee"
)

mycursor = mydb.cursor()

mycursor.execute("create table cats_auto ( id INT NOT NULL AUTO_INCREMENT,name VARCHAR(150),owner VARCHAR(150) , PRIMARY KEY (id))")

mycursor.execute("show tables")

myresult = mycursor.fetchall()
print(myresult)