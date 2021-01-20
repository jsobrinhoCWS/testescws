*** Settings ***
Resource            C:/Projetos/SuiteTeste(CWSDigital)/resource/login/ResourceLogin.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

### SETUP ele roda keyword antes da Suite ou antes de um teste
### TEARDOWN ele roda keyword depois de uma Suite ou um teste

*** Test Case ***
Cenário 01: Login de acesso Marcopolo com Email
    Dado que estou na página home do login (Marcopolo)
    Quando selecionar o link "Login" (Marcopolo)
    Então direciona o cliente para a página de login (Marcopolo)
    Quando informo os dados do login com Email (Marcopolo)
    Então sistema direciona para página home (Marcopolo)
    Então acessa a página meu perfil (Marcopolo)
    Então valida página de sucesso (Marcopolo)

Cenário 02: Login de acesso Marcopolo com CPF
    Dado que estou na página home do login (Marcopolo)
    Quando selecionar o link "Login" (Marcopolo)
    Então direciona o cliente para a página de login (Marcopolo)
    Quando informo os dados do login com CPF com mascara (Marcopolo)
    Então sistema direciona para página home (Marcopolo)
    Então acessa a página meu perfil (Marcopolo)
    Quando seleciona botão de sair (Marcopolo)

    Quando selecionar o link "Login" (Marcopolo)
    Então direciona o cliente para a página de login (Marcopolo)
    Quando informo os dados do login com CPF sem mascara (Marcopolo)
    Então sistema direciona para página home (Marcopolo)
    Então acessa a página meu perfil (Marcopolo)
    Então valida página de sucesso (Marcopolo)

Cenário 03: Login de acesso Marcopolo com CNPJ
    Dado que estou na página home do login (Marcopolo)
    Quando selecionar o link "Login" (Marcopolo)
    Então direciona o cliente para a página de login (Marcopolo)
    Quando informo os dados do login com CNPJ com mascara (Marcopolo)
    Então sistema direciona para página home (Marcopolo)
    Então acessa a página meu perfil (Marcopolo)
    Quando seleciona botão de sair (Marcopolo)

    Quando selecionar o link "Login" (Marcopolo)
    Então direciona o cliente para a página de login (Marcopolo)
    Quando informo os dados do login com CNPJ sem mascara (Marcopolo)
    Então sistema direciona para página home (Marcopolo)
    Então acessa a página meu perfil (Marcopolo)
    Então valida página de sucesso (Marcopolo)

*** Keywords ***
Dado que estou na página home do login (Marcopolo)
    Acessar a página de login do site (Marcopolo)

Quando selecionar o link "Login" (Marcopolo)
    Clicar na opção de "Login" (Marcopolo)

Então direciona o cliente para a página de login (Marcopolo)
    Verifica a página de login (Marcopolo)

#---Login com Email--#
Quando informo os dados do login com Email (Marcopolo)
    Informe campo Email (Marcopolo)
    Informe campo Senha Email (Marcopolo)
    Seleciona botão "Fazer login" (Marcopolo)

#---Login com CPF--#
Quando informo os dados do login com CPF com mascara (Marcopolo)
    Informe CPF com mascara (Marcopolo)
    Informe Senha CPF (Marcopolo)
    Seleciona botão "Fazer login" (Marcopolo)

Quando informo os dados do login com CPF sem mascara (Marcopolo)
    Informe CPF sem mascara (Marcopolo)
    Informe Senha CPF (Marcopolo)
    Seleciona botão "Fazer login" (Marcopolo)

#---Login com CNPJ--#
Quando informo os dados do login com CNPJ com mascara (Marcopolo)
    Informe campo CNPJ com mascara (Marcopolo)
    Informe campo Senha CNPJ (Marcopolo)
    Seleciona botão "Fazer login" (Marcopolo)

Quando informo os dados do login com CNPJ sem mascara (Marcopolo)
    Informe campo CNPJ sem mascara (Marcopolo)
    Informe campo Senha CNPJ (Marcopolo)
    Seleciona botão "Fazer login" (Marcopolo)
###

Então sistema direciona para página home (Marcopolo)
    Verifica página logado Home (Marcopolo)

Então acessa a página meu perfil (Marcopolo)
    Acessar a página de meu perfil (Marcopolo)

Quando seleciona botão de sair (Marcopolo)
    Seleciona opção de sair (Marcopolo)

Então valida página de sucesso (Marcopolo)
    Valida página de sucesso (Marcopolo)
