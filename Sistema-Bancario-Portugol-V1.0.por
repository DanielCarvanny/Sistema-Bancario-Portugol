programa {
  cadeia nome 
  real cpf
  real contato
  cadeia endereco
  real saldo = 0
  inteiro opcao
  real d
  real s

  funcao inicio() {
    cadastrar()
    menu()
        enquanto(opcao != 6){
          se(opcao == 1){
            // Conta

          }
          se(opcao == 2){
          // Consultar Saldo

        }

        se (opcao == 3){
          //Depositar Dinheiro
          deposito()
        }

        se(opcao == 4){
         // Sacar Dinheiro
          saque()
        }
        
        se(opcao == 5){
          // Extrato do saldo atual e depósito de saque atual

        }
            
            menu()
            limpa()
        }
          
  }

  funcao cadastrar(){
    escreva("\n--------------------|FAÇA SEU CADASTRO|-------------------\n")
    escreva("Insira  o  nome completo do Titular da conta\n")
    leia(nome )
    escreva("Insira seu CPF\n")
    leia(cpf)
    escreva("Insira seu contato\n")
    leia(contato)
    escreva("Insira seu Endereço\n")
    leia(endereco)
  }

  funcao consultarSaldo(){
    escreva("O saldo da conta é: ",saldo)
  }
  
  funcao menu(){
        escreva("\n--------------------|MENU PRINCIPAL|-------------------\n")    
        escreva("1- Conta\n")
        escreva("2- Consultar Saldo\n")
        escreva("3- Depositar Dinheiro\n")
        escreva("4- Sacar Dinheiro\n")
        escreva("5- Extrato do saldo atual e depósito de saque atual\n")
        escreva("6- sair\n")
        escreva("-------------------------------------------------------\n")
        leia(opcao)
    }
  funcao menuConta(){
    escreva("\n--------------------|CONTA|-------------------\n")
    escreva("Nome: ",nome,"\n")
    escreva("CPF: ",cpf,"\n")
    escreva("Contato: ",contato,"\n")
    escreva("Endereço: ",endereco,"\n")
    escreva("-------------------------------------------------------\n")

  }

  // 3
  funcao deposito(){
    escreva("Digite o valor a ser depositado\n")
    leia (d)
    se(d > 0){
      saldo = saldo + d
      escreva("Deposito concluído\n")
    } senao{
      escreva("Operação inválida")
    }
  }

  // 4
  funcao saque(){
    escreva("Digite o valor a ser sacado\n")
    leia (s)
    se(s > 0 e s <= saldo){
      saldo = saldo - s
      escreva("Saque concluído\n")
    } senao{
      escreva("Operação inválida")
    }
  }
}

