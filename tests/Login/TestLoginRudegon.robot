*** Settings ***
Resource            C:/Projetos/SuiteTeste(CWSDigital)/resource/login/ResourceLogin.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

### SETUP ele roda keyword antes da Suite ou antes de um teste
### TEARDOWN ele roda keyword depois de uma Suite ou um teste

*** Test Case ***
Cenário 01: Login de acesso Rudegon com Email
    Dado que estou na página home do login
    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com Email
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Então valida página de sucesso

Cenário 02: Login de acesso Rudegon com CPF
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

Cenário 03: Login de acesso Rudegon com CNPJ
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
    Acessar a página de login do site (Rudegon)

Quando selecionar o link "Login"
    Clicar na opção de "Login" (Rudegon)

Então direciona o cliente para a página de login
    Verifica a página de login (Rudegon)

#---Login com Email--#
Quando informo os dados do login com Email
    Informe campo Email (Rudegon)
    Informe campo Senha Email (Rudegon)
    Seleciona botão "Fazer login" (Rudegon)

#---Login com CPF--#
Quando informo os dados do login com CPF com mascara
    Informe campo CPF com mascara (Rudegon)
    Informe campo Senha CPF (Rudegon)
    Seleciona botão "Fazer login" (Rudegon)

Quando informo os dados do login com CPF sem mascara
    Informe campo CPF sem mascara (Rudegon)
    Informe campo Senha CPF (Rudegon)
    Seleciona botão "Fazer login" (Rudegon)

#---Login com CNPJ--#
Quando informo os dados do login com CNPJ com mascara
    Informe campo CNPJ com mascara (Rudegon)
    Informe campo Senha CNPJ (Rudegon)
    Seleciona botão "Fazer login" (Rudegon)

Quando informo os dados do login com CNPJ sem mascara
    Informe campo CNPJ sem mascara (Rudegon)
    Informe campo Senha CNPJ (Rudegon)
    Seleciona botão "Fazer login" (Rudegon)
###

Então sistema direciona para página home
    Verifica página logado Home (Rudegon)

Então acessa a página meu perfil
    Acessar a página de meu perfil (Rudegon)

Quando seleciona botão de sair
    Seleciona opção de sair (Rudegon)

Então valida página de sucesso
    Valida página de sucesso (Rudegon)
