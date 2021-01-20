*** Settings ***
Resource            C:/Projetos/SuiteTeste(CWSDigital)/resource/login/ResourceLogin.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

### SETUP ele roda keyword antes da Suite ou antes de um teste
### TEARDOWN ele roda keyword depois de uma Suite ou um teste

*** Test Case ***
Cenário 01: Login de acesso Toca Obra com Email
    Dado que estou na página home do login
    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com Email
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Então valida página de sucesso

Cenário 02: Login de acesso Toca Obra com CPF
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

Cenário 03: Login de acesso Toca Obra com CNPJ
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
    Acessar a página de login do site (TocaObra)

Quando selecionar o link "Login"
    Clicar na opção de "Login" (TocaObra)

Então direciona o cliente para a página de login
    Verifica a página de login (TocaObra)

#---Login com Email--#
Quando informo os dados do login com Email
    Informe campo Email (TocaObra)
    Informe campo Senha Email (TocaObra)
    Seleciona botão "Fazer login" (TocaObra)

#---Login com CPF--#
Quando informo os dados do login com CPF com mascara
    Informe campo CPF com mascara (TocaObra)
    Informe campo Senha CPF (TocaObra)
    Seleciona botão "Fazer login" (TocaObra)

Quando informo os dados do login com CPF sem mascara
    Informe campo CPF sem mascara (TocaObra)
    Informe campo Senha CPF (TocaObra)
    Seleciona botão "Fazer login" (TocaObra)

#---Login com CNPJ--#
Quando informo os dados do login com CNPJ com mascara
    Informe campo CNPJ com mascara (TocaObra)
    Informe campo Senha CNPJ (TocaObra)
    Seleciona botão "Fazer login" (TocaObra)

Quando informo os dados do login com CNPJ sem mascara
    Informe campo CNPJ sem mascara (TocaObra)
    Informe campo Senha CNPJ (TocaObra)
    Seleciona botão "Fazer login" (TocaObra)
###

Então sistema direciona para página home
    Verifica página logado Home (TocaObra)

Então acessa a página meu perfil
    Acessar a página de meu perfil (TocaObra)

Quando seleciona botão de sair
    Seleciona opção de sair (TocaObra)

Então valida página de sucesso
    Valida página de sucesso (TocaObra)
