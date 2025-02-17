programa {
  cadeia nome
  real cpf
  real contato
  cadeia endereco
  cadeia loginCadastro, senhaCadastro // Variáveis do cadastro
  cadeia login, senha // Variáveis para o login
  real saldo = 0
  inteiro opcao = 0
  real d
  real s
  cadeia historico[100] // Lista para armazenar o extrato
  inteiro indiceExtrato = 0 // Índice para controlar o extrato
  inteiro opcao2 = 0
  inteiro opcao3 = 0
  cadeia enter

  funcao inicio() {
    enquanto(opcao != 3) { 
      escreva("\n--------------------|LOGIN|-------------------\n")
      escreva("\n 1 = Já possuo cadastro.\n 2 = Não possuo cadastro.\n Aperte 3 para fechar o programa\n")
      leia(opcao)

      se(opcao == 1) {
        // Menu de Login
        menuLogin()
      }  
      se (opcao == 2) {
        // Menu de Cadastro
        cadastrar()
      }
      se (opcao == 3){
      }
    }
  }

  funcao menuLogin() {
    inteiro t = 1 // Valor de tenativas

    se(t == 3){
      t = t - 3
    }
    
    enquanto(t <= 3){
      escreva("\n--------------------|FAÇA O LOGIN|-------------------\n")
      escreva("Informe seu login:\n")
      leia(login)
      escreva("Informe sua senha:\n")
      leia(senha)

        se(senha == "" ou login == ""){
          escreva("Preencha os campos corretamente\n")
          escreva("Número de tentativas: ", t, "/3")
        }senao 
        se(login != loginCadastro ou senha != senhaCadastro){
          escreva("Senha ou Login incorreto!\n")
          escreva("Número de tentativas: ", t, "/3")
        }senao se(login == loginCadastro e senha == senhaCadastro){
          menu()
        } 
        t++
    } 
    se(t == 3){
      limpa()
      escreva("Limite de tentativas excedido. Retornando ao menu inicial\n")
      escreva("Pressione 'Enter' para continuar")
      leia(enter)
      inicio()
    }    
  }

  funcao cadastrar() {
    escreva("\n--------------------|FAÇA SEU CADASTRO|-------------------\n")
    escreva("Insira o nome completo do Titular da conta\n")
    leia(nome)
    escreva("Insira seu CPF\n")
    leia(cpf)
    escreva("Insira seu contato\n")
    leia(contato)
    escreva("Insira seu Endereço\n")
    leia(endereco)
    escreva("Insira seu login\n")
    leia(loginCadastro)
    escreva("Insira sua senha\n")
    leia(senhaCadastro)
   
    // Voltar ao menuLogin 
    se( nome == "" ou cpf == "" ou contato == "" ou endereco == "" ou loginCadastro == "" ou senhaCadastro == ""){
      escreva("Cadastro incompleto. Refaça o cadastro!\n")
      escreva("Pressione 'Enter' para continuar")
      leia(enter)
      limpa()
      cadastrar()
    }senao{
      // Voltar ao menuLogin
      escreva("Cadastro realizado com sucesso!\n")
      escreva("Retornando ao menu de login.\n")
      escreva("Pressione 'Enter' para continuar")
      leia(enter)
      limpa()
      inicio()
    }
  }

  funcao menu() {
    enquanto(opcao != 6) {
      escreva("\n--------------------|MENU PRINCIPAL|-------------------\n")
      escreva("1- Conta\n")
      escreva("2- Consultar Saldo\n")
      escreva("3- Depositar Dinheiro\n")
      escreva("4- Sacar Dinheiro\n")
      escreva("5- Extrato do saldo atual e depósito de saque atual\n")
      escreva("6- Sair\n")
      escreva("---------------------------------------------------------\n")
      leia(opcao)

      se(opcao == 6) {
        limpa()
        inicio() // Volta para o inicio ao escolher a opção 6
      } senao se (opcao == 1) {
        menuConta()
      } senao se (opcao == 2) {
        consultarSaldo()
      } senao se (opcao == 3) {
        deposito()
      } senao se (opcao == 4) {
        saque()
      } senao se (opcao == 5) {
        extrato()
      }
    }
  }

  funcao menuConta() {
    escreva("\n--------------------|CONTA|--------------------------\n")
    escreva("Nome: ", nome, "\n")
    escreva("CPF: ", cpf, "\n")
    escreva("Contato: ", contato, "\n")
    escreva("Endereço: ", endereco, "\n")
    escreva("---------------------------------------------------------\n")

    escreva("Pressione 'Enter' para continuar")
    leia(enter)
    limpa()
  }

  // Consultar saldo
  funcao consultarSaldo() {
    escreva("O saldo da conta é: R$ ", saldo, "\n")
    escreva("Pressione 'Enter' para continuar")
    leia(enter)
    limpa()
  }

  // Depósito
  funcao deposito() {
    escreva("Digite o valor a ser depositado\n")
    leia(d)
    se(d > 0) {
      saldo = saldo + d
      escreva("Depósito concluído\n")
      historico[indiceExtrato] = "Depósito: R$ " + d
      indiceExtrato++
    } senao {
      escreva("Operação inválida\n")
      deposito()
    }
    escreva("Pressione 'Enter' para continuar")
    leia(enter)
    limpa() 
  }

  // Saque
  funcao saque() {
    escreva("Digite o valor a ser sacado\n")
    leia(s)
    se(s > 0 e s <= saldo) {
      saldo = saldo - s
      escreva("Saque concluído\n")
      historico[indiceExtrato] = "Saque: R$ " + s
      indiceExtrato++
    } senao {
      escreva("Operação inválida\n")
      saque()
    }
    escreva("Pressione 'Enter' para continuar")
    leia(enter)
    limpa()
  }

  // Extrato
  funcao extrato() {
    escreva("\n--------------------|extrato|-----------------------\n")
    se(indiceExtrato == 0) {
      escreva("Nenhuma operação realizada.\n")
    } senao {
      para(inteiro i = 0; i < indiceExtrato; i++) {
        escreva(historico[i], "\n")
      }
    }
    escreva("Saldo atual: R$ ", saldo, "\n")
    escreva("-------------------------------------------------------\n")

    escreva("Pressione 'Enter' para continuar")
    leia(enter)
    limpa()
  }

}
