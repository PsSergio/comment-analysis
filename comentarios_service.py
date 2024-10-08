import sqlConnection
import adjetivos_dados

def getByProdutoID(id: str):
  cursor = sqlConnection.InitDatabaseConnection().cursor()
  return cursor.execute(f"SELECT * from comentarios Where comentarios.idProduto = {id}")
  
def createSujoFile(comentarios: object):
  sujoFile = open("sujo.txt", "w", encoding="utf-8")

  for i in comentarios:
    sujoFile.write(f"\n{(i.conteudo)}")

  sujoFile.close()

def generateReport():

  sujoFile = open("sujo.txt", "r", encoding="utf-8")

  content = sujoFile.read().lower()

  sujoFile.close()

  adjetivos:dict = adjetivos_dados.getAdjetivos()

  pontosTotais = 0
  quantidadePalavras = 0
  palavraMaisRepetida = ""
  qtdPalavraMaisRepetida = 0

  for qualidade in adjetivos:
    quantidadePorPalavra = 1

    start = content.find(qualidade.lower()) 
    if start == -1:
      continue

    pontosTotais += adjetivos[qualidade]
    quantidadePalavras += 1
    
    while not start == -1:
      pontosTotais += adjetivos[qualidade]
      start = content.find(qualidade.lower(), start+1)
      quantidadePalavras += 1
      quantidadePorPalavra += 1

    if quantidadePorPalavra > qtdPalavraMaisRepetida:
      qtdPalavraMaisRepetida = quantidadePorPalavra
      palavraMaisRepetida = qualidade      

  media = round(pontosTotais/quantidadePalavras, 2)

  print("Média: ", media)
  analyseMedia(media)
  print("Palavra mais repetida: ", palavraMaisRepetida, "-", qtdPalavraMaisRepetida, "vezes")

def analyseMedia(media: float):
  if media < 1.5:
    print("Avaliação: Produto Indesejado!")
  elif media < 2.5:
    print("Avaliação: Produto Desejado!")
  else: 
    print("Avaliação: Produto Muito Desejado!!")