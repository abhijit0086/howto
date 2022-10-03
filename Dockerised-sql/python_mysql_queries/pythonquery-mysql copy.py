import mysql.connector


#mydb = mysql.connector.connect(
 # host="wnstriangemlopspocdb.mysql.database.azure.com",
  #user="wnsmysqladmin",
 # password="checkemail"
#)

cnx = mysql.connector.connect(user="root", password="my-secret-pw", host="10.31.8.38", port=3306)


mycursor = cnx.cursor()
#mycursor.execute("CREATE DATABASE mlflowdatabase")
mycursor.execute("SHOW DATABASES")

for x in mycursor:
  print(x)
