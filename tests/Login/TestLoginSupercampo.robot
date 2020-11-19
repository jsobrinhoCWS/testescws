*** Settings ***
Resource            ../resource/ResourceLogin.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

### SETUP ele roda keyword antes da Suite ou antes de um teste
### TEARDOWN ele roda keyword depois de uma Suite ou um teste

*** Test Case ***
Cenário 01: Login de acesso SuperCampo com Email
    Dado que estou na página home do login
    Quando selecionar o link "Login"
    Então direciona o cliente para a página de login
    Quando informo os dados do login com Email
    Então sistema direciona para página home
    Então acessa a página meu perfil
    Então valida página de sucesso

Cenário 02: Login de acesso SuperCampo com CPF
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

Cenário 03: Login de acesso SuperCampo com CNPJ
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
    Acessar a página de login do site (SuperCampo)

Quando selecionar o link "Login"
    Clicar na opção de "Login" (SuperCampo)

Então direciona o cliente para a página de login
    Verifica a página de login (SuperCampo)

#---Login com Email--#
Quando informo os dados do login com Email
    Informe campo Email (SuperCampo)
    Informe campo Senha Email (SuperCampo)
    Seleciona botão "Fazer login" (SuperCampo)

#---Login com CPF--#
Quando informo os dados do login com CPF com mascara
    Informe campo CPF com mascara (Rivesa)
    Informe campo Senha CPF (Rivesa)
    Seleciona botão "Fazer login" (Rivesa)

Quando informo os dados do login com CPF sem mascara
    Informe campo CPF sem mascara (SuperCampo)
    Informe campo Senha CPF (SuperCampo)
    Seleciona botão "Fazer login" (SuperCampo)

#---Login com CNPJ--#
Quando informo os dados do login com CNPJ com mascara
    Informe campo CNPJ com mascara (SuperCampo)
    Informe campo Senha CNPJ (SuperCampo)
    Seleciona botão "Fazer login" (SuperCampo)

Quando informo os dados do login com CNPJ sem mascara
    Informe campo CNPJ sem mascara (SuperCampo)
    Informe campo Senha CNPJ (SuperCampo)
    Seleciona botão "Fazer login" (SuperCampo)
###

Então sistema direciona para página home
    Verifica página logado Home (SuperCampo)

Então acessa a página meu perfil
    Acessar a página de meu perfil (SuperCampo)

Quando seleciona botão de sair
    Seleciona opção de sair (SuperCampo)

Então valida página de sucesso
    Valida página de sucesso (SuperCampo)
