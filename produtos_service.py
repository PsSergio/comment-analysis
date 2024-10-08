import sqlConnection


def getAllProducts():
  cursorDatabase = sqlConnection.InitDatabaseConnection().cursor()
  results = cursorDatabase.execute("Select * from produtos").fetchall()

  print(f"\nPRODUTOS: ")
  for i in results:
    print(i.id, " ", i.nome)
  
  print(f"\n")
  cursorDatabase.close()
  