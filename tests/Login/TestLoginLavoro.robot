*** Settings ***
Resource            ../resource/Login/ResourceLogin.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

### SETUP ele roda keyword antes da Suite ou antes de um teste
### TEARDOWN ele roda keyword depois de uma Suite ou um teste

*** Test Case ***
Cenário 01: Login de acesso Lavoro com Email
    Dado que estou na página home do login
    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com Email
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Então valida página de sucesso

Cenário 02: Login de acesso Lavoro com CPF
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

Cenário 03: Login de acesso Lavoro com CNPJ
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
    Acessar a página de login do site (Lavoro)

Quando selecionar o link "Login"
    Clicar na opção de "Login" (Lavoro)

Então direciona o cliente para a página de login
    Verifica a página de login (Lavoro)

#---Login com Email--#
Quando informo os dados do login com Email
    Informe campo Email (Lavoro)
    Informe campo Senha Email (Lavoro)
    Seleciona botão "Fazer login" (Lavoro)

#---Login com CPF--#
Quando informo os dados do login com CPF com mascara
    Informe campo CPF com mascara (Lavoro)
    Informe campo Senha CPF (Lavoro)
    Seleciona botão "Fazer login" (Lavoro)

Quando informo os dados do login com CPF sem mascara
    Informe campo CPF sem mascara (Lavoro)
    Informe campo Senha CPF (Lavoro)
    Seleciona botão "Fazer login" (Lavoro)

#---Login com CNPJ--#
Quando informo os dados do login com CNPJ com mascara
    Informe campo CNPJ com mascara (Lavoro)
    Informe campo Senha CNPJ (Lavoro)
    Seleciona botão "Fazer login" (Lavoro)

Quando informo os dados do login com CNPJ sem mascara
    Informe campo CNPJ sem mascara (Lavoro)
    Informe campo Senha CNPJ (Lavoro)
    Seleciona botão "Fazer login" (Lavoro)
###

Então sistema direciona para página home
    Verifica página logado Home (Lavoro)

Então acessa a página meu perfil
    Acessar a página de meu perfil (Lavoro)

Quando seleciona botão de sair
    Seleciona opção de sair (Lavoro)

Então valida página de sucesso
    Valida página de sucesso (Lavoro)
