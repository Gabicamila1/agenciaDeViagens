Algoritmo "Agência de Viagens"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/07/2023

const
   MAX_CLIENTES = 2
   

var
i:inteiro
cliente:inteiro
   opcao:inteiro
   numClientes: inteiro
   nomeCliente: vetor [1..MAX_CLIENTES] de caracter
   destinoViagem: vetor [1..MAX_CLIENTES] de caracter

procedimento cadastrarCliente()
var
   nome: caracter
inicio
   se numClientes < MAX_CLIENTES entao
      numClientes <- numClientes + 1
      escreval("Digite o nome do cliente ", numClientes, ": ")
      leia(nome)
      nomeCliente[numClientes] <- nome
      escreval("Cliente cadastrado com sucesso.")
   senao
      escreval("Não foi possível cadastrar o cliente. Limite máximo atingido.")
   fimse
fimprocedimento

procedimento cadastrarDestino()
var
   cliente: inteiro
   destino: caracter
inicio
   escreval("----- Clientes Cadastrados -----")
   se numClientes > 0 entao
      para i de 1 ate numClientes faca
         escreval(i, ". ", nomeCliente[i])
      fimpara
      escreval("--------------------------------")

      escreval("Digite o número do cliente (1 a ", numClientes, "): ")
      leia(cliente)

      se cliente = numClientes entao
         escreval("Digite o destino da viagem para o cliente ", cliente, ": ")
         leia(destino)
         destinoViagem[cliente] <- destino
         escreval("Destino cadastrado para o cliente ", cliente, ".")
      senao
         escreval("Cliente inválido.")
      fimse
   senao
      escreval("Não há clientes cadastrados.")
   fimse
fimprocedimento

procedimento consultarClientes()
var
   i: inteiro
inicio
   se numClientes > 0 entao
      escreval("----- Clientes Cadastrados -----")
      para i de 1 ate numClientes faca
         escreval("Cliente ", i, ": ", nomeCliente[i])
      fimpara
      escreval("--------------------------------")
   senao
      escreval("Não há clientes cadastrados.")
   fimse
fimprocedimento

procedimento consultarDestinos()
var
   i: inteiro
inicio
   se numClientes > 0 entao
      escreval("----- Destinos Cadastrados -----")
      para i de 1 ate numClientes faca
         escreval("Cliente ", i, ": ", nomeCliente[i], " | Destino: ", destinoViagem[i])
      fimpara
      escreval("--------------------------------")
   senao
      escreval("Não há clientes cadastrados.")
   fimse
fimprocedimento

Inicio
   numClientes <- 0

   escreval("---------------------")
   escreval("Agência de Viagens")
   escreval("---------------------")

   repita
      escreval("1. Cadastrar cliente")
      escreval("2. Cadastrar destino")
      escreval("3. Consultar clientes")
      escreval("4. Consultar destinos")
      escreval("5. Sair")
      escreval("---------------------")
      escreval("Digite a opção desejada: ")
      leia(opcao)

      escolha (opcao)
         caso 1
            cadastrarCliente()
         caso 2
            cadastrarDestino()
         caso 3
            consultarClientes()
         caso 4
            consultarDestinos()
         caso 5
            escreval("Saindo...")
         outrocaso
            escreval("Opção inválida.")
      fimescolha
       ate opcao = 5

Fimalgoritmo