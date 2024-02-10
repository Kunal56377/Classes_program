import mysql.connector

mydb = mysql.connector.connect(
  host = "localhost",
  user = "root",
  password = "pass@1234",
  database = "employee"
)

mycursor = mydb.cursor()
mycursor.execute("insert into cats_auto (name,owner) values ('xyz','abc')")
mydb.commit()
mycursor.execute("select * from cats_auto")
myresult = mycursor.fetchall()
print(myresult)




