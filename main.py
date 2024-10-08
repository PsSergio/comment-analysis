# 1 - Pegar todos os comentários e colocar em um arquivo, cada comentário fica em uma linha
# 2 - nomear este arquivo como "sujo.txt"
# 3 - criar um novo arquivo "limpo.txt" para pegar apenas as palavras pertinentes
# 4 - contar qual palavra foi mais comentada

import produtos_service
import os
import comentarios_service

def exibeMenu():
  print(
    """

    0 - Sair
    1 - Mostrar Produtos
    2 - Relatório do produto e dos comentários    

    """
  )

def main():
  while True:
    exibeMenu()
    op = input("Escolha: ")
    os.system("cls")

    match (op):
      case '0':
        return
      
      case '1':
        produtos_service.getAllProducts()
        input(f"Aperte para continuar...")

      case '2':
        produtos_service.getAllProducts()

        produtoID = input("ID do Produto: ")

        print(f"\n")

        comentarios = comentarios_service.getByProdutoID(produtoID)
        comentarios_service.createSujoFile(comentarios)

        comentarios_service.generateReport()

        input(f"\nAperte para continuar...")


    os.system("cls")

main()