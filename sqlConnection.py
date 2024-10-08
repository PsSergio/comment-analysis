import pyodbc
import os

def InitDatabaseConnection():
  server = "DESKTOP-PAULO"
  database = 'commentsAnalysis'
  username = 'sa'
  password = 'PsSergio1009@'

  return pyodbc.connect('DRIVER={SQL Server};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+ password)
