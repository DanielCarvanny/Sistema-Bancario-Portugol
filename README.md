# Sistema Bancário em Portugol

💫 **Visão Geral**

Este projeto é um sistema bancário simples desenvolvido em Portugol, uma linguagem de programação voltada para o aprendizado de lógica de programação. O sistema permite que os usuários realizem operações básicas de um banco, como cadastro, login, consulta de saldo, depósito, saque e visualização de extrato. O código foi desenvolvido como parte de um projeto do primeiro período de um curso de programação.

---

## 🛠 **Funcionalidades Implementadas**

### **Cadastro de Usuário**
- Cadastro de informações pessoais, como nome, CPF, contato e endereço.
- Criação de login e senha para acesso ao sistema.

### **Login**
- Autenticação do usuário com login e senha.
- Limite de tentativas de login para segurança.

### **Operações Bancárias**
- **Consultar Saldo**: Visualização do saldo atual da conta.
- **Depósito**: Adição de valores à conta.
- **Saque**: Retirada de valores da conta (desde que haja saldo suficiente).
- **Extrato**: Visualização do histórico de transações (depósitos e saques).

### **Menu Interativo**
- Interface simples e intuitiva para navegação entre as funcionalidades.

---

## ⚙️ **Estrutura do Código**

O código está organizado em funções que representam cada funcionalidade do sistema:

1. **Função `inicio()`**: Menu principal do sistema, onde o usuário escolhe entre fazer login, cadastrar-se ou sair.
2. **Função `menuLogin()`**: Realiza a autenticação do usuário, com limite de tentativas.
3. **Função `cadastrar()`**: Permite o cadastro de um novo usuário.
4. **Função `menu()`**: Menu de operações bancárias, onde o usuário pode escolher entre consultar saldo, depositar, sacar, ver extrato ou sair.
5. **Função `menuConta()`**: Exibe as informações cadastradas do usuário.
6. **Função `consultarSaldo()`**: Mostra o saldo atual da conta.
7. **Função `deposito()`**: Realiza a operação de depósito.
8. **Função `saque()`**: Realiza a operação de saque.
9. **Função `extrato()`**: Exibe o histórico de transações e o saldo atual.

---

## 🚀 **Como Executar o Projeto**

### **Pré-requisitos**
- Um ambiente de desenvolvimento que suporte Portugol, como o **Portugol Studio** ou **VisualG**.

### **Passos para Execução**

1. **Abra o ambiente de desenvolvimento**:
   - Inicie o Portugol Studio ou VisualG.

2. **Copie e cole o código**:
   - Copie o código fornecido e cole-o no ambiente de desenvolvimento.

3. **Execute o programa**:
   - Compile e execute o código.
   - Siga as instruções exibidas no terminal para interagir com o sistema.

---

## 📚 **Exemplos de Uso**

### **Cadastro de Usuário**
1. No menu inicial, selecione a opção **2** para cadastrar-se.
2. Insira suas informações pessoais, login e senha.

### **Login**
1. No menu inicial, selecione a opção **1** para fazer login.
2. Insira o login e senha cadastrados.

### **Operações Bancárias**
- **Consultar Saldo**: No menu principal, selecione a opção **2**.
- **Depositar**: No menu principal, selecione a opção **3** e insira o valor a ser depositado.
- **Sacar**: No menu principal, selecione a opção **4** e insira o valor a ser sacado.
- **Extrato**: No menu principal, selecione a opção **5** para visualizar o histórico de transações.

---

## 🧪 **Testes e Validações**

O sistema inclui validações básicas para garantir o funcionamento correto:
- Verificação de campos vazios durante o cadastro e login.
- Limite de tentativas de login.
- Validação de valores positivos para depósitos e saques.
- Verificação de saldo suficiente para saques.

---

**Desenvolvido por Daniel Carvanny e Isabela Rezende.**
