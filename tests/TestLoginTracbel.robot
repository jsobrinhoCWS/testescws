*** Settings ***
Resource            ../resource/ResourceLogin.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

### SETUP ele roda keyword antes da Suite ou antes de um teste
### TEARDOWN ele roda keyword depois de uma Suite ou um teste

*** Test Case ***
Cenário 01: Login de acesso Tracbel com Email
    Dado que estou na página home do login
    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com Email
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Então valida página de sucesso

Cenário 02: Login de acesso Tracbel com CPF
    Dado que estou na página home do login
    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com CPF com mascara
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Quando seleciona botão de sair

    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com CPF sem mascara
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Então valida página de sucesso

Cenário 03: Login de acesso Tracbel com CNPJ
    Dado que estou na página home do login
    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com CNPJ com mascara
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Quando seleciona botão de sair

    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com CNPJ sem mascara
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Então valida página de sucesso

*** Keywords ***
Dado que estou na página home do login
    Acessar a página de login do site (Tracbel)

Quando selecionar o link "Login"
    Clicar na opção de "Login" (Tracbel)

Então direciona o cliente para a página de login
    Verifica a página de login (Tracbel)

#---Login com Email--#
Quando informo os dados do login com Email
    Informe campo Email (Tracbel)
    Informe campo Senha Email (Tracbel)
    Seleciona botão "Fazer login" (Tracbel)

#---Login com CPF--#
Quando informo os dados do login com CPF com mascara
    Informe campo CPF com mascara (Tracbel)
    Informe campo Senha CPF (Tracbel)
    Seleciona botão "Fazer login" (Tracbel)

Quando informo os dados do login com CPF sem mascara
    Informe campo CPF sem mascara (Tracbel)
    Informe campo Senha CPF (Tracbel)
    Seleciona botão "Fazer login" (Tracbel)

#---Login com CNPJ--#
Quando informo os dados do login com CNPJ com mascara
    Informe campo CNPJ com mascara (Tracbel)
    Informe campo Senha CNPJ (Tracbel)
    Seleciona botão "Fazer login" (Tracbel)

Quando informo os dados do login com CNPJ sem mascara
    Informe campo CNPJ sem mascara (Tracbel)
    Informe campo Senha CNPJ (Tracbel)
    Seleciona botão "Fazer login" (Tracbel)
###

Então sistema direciona para página home
    Verifica página logado Home (Tracbel)

Então acessa a página meu perfil
    Acessar a página de meu perfil (Tracbel)

Quando seleciona botão de sair
    Seleciona opção de sair (Tracbel)

Então valida página de sucesso
    Valida página de sucesso (Tracbel)
