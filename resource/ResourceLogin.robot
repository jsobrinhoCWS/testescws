*** Settings ***
Library             SeleniumLibrary

*** Variables ***
##BROWSER##
${BROWSER-FIREFOX}  firefox

##URL##
${URL-TOCAOBRA}     https://tocaobra.sandbox.clubecdp.com.br/login?targetUri=%2F
${URL-TRACBEL}      https://tracbel.sandbox.clubecdp.com.br/login?targetUri=%2F
${URL-MARCOPOLO}    https://marcopolo-sa.stg.clubecdp.com.br/login?targetUri=%2F
${URL-REDEPRO}      https://rede-pro.sandbox.clubecdp.com.br/login?targetUri=%2F
${URL-LAVORO}       https://lavoro.sandbox.clubecdp.com.br/login?targetUri=%2F
${URL-RODOBENS}     https://epecas.sandbox.clubecdp.com.br/login?targetUri=%2F
${URL-RUDEGON}      https://rudegon.sandbox.clubecdp.com.br/login?targetUri=%2F
${URL-RIVESA}       https://rivesa.sandbox.clubecdp.com.br/login?targetUri=%2F
${URL-SUPERCAMPO}   https://supercampo.sandbox.clubecdp.com.br/login?targetUri=%2F
${URL-APAVEL}       https://apavel.sandbox.clubecdp.com.br/login?targetUri=%2F
###

##ACESSOS LOGIN TOCA OBRA##
${IMG-LOGO-TOCAOBRA}       https://images.sandbox.canaldapeca.com.br/fornecedores/m/toca-obra.jpg
${CAMPO-LOGIN-TOCAOBRA}    id: username
${CAMPO-SENHA-TOCAOBRA}    id: password
${EMAIL-TOCAOBRA}          jsobrinho87@gmail.com
${CPF-MASC-TOCAOBRA}       459.528.627-99
${CPF-TOCAOBRA}            45952862799
${CNPJ-MASC-TOCAOBRA}      70.291.460/0001-00
${CNPJ-TOCAOBRA}           70291460000100
${SENHA-TOCAOBRA}          testecws
${SENHA-CNPJ-TOCAOBRA}     mudar123!
${BOTAO-LOGIN-TOCAOBRA}    xpath=//*[@id="submit"]
${URL-TOCAOBRA-PERFIL}     https://tocaobra.sandbox.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-TOCAOBRA}     xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

##ACESSOS LOGIN TRACBEL##
${IMG-LOGO-TRACBEL}        https://images.sandbox.canaldapeca.com.br/fornecedores/m/tracbel-sa.jpg
${CAMPO-LOGIN-TRACBEL}     id: username
${CAMPO-SENHA-TRACBEL}     id: password
${EMAIL-TRACBEL}           tracbel@tracbel.com.br
${CPF-MASC-TRACBEL}        521.099.660-33
${CPF-TRACBEL}             52109966033
${CNPJ-MASC-TRACBEL}       77.336.554/0001-99
${CNPJ-TRACBEL}            77336554000199
${SENHA-TRACBEL}           123456
${SENHA-CNPJ-TRACBEL}      mudar123!
${BOTAO-LOGIN-TRACBEL}     xpath=//*[@id="submit"]
${URL-TRACBEL-PERFIL}      https://tracbel.sandbox.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-TRACBEL}      xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

##ACESSOS LOGIN MARCOPOLO##
${IMG-LOGO-MARCOPOLO}        https://images.stg.canaldapeca.com.br/fornecedores/m/marcopolo.jpg
${CAMPO-LOGIN-MARCOPOLO}     id: username
${CAMPO-SENHA-MARCOPOLO}     id: password
${EMAIL-MARCOPOLO}           marcopolo.sp@marcopolo.com.br
${CPF-MASC-MARCOPOLO}        521.099.660-33
${CPF-MARCOPOLO}             52109966033
${CNPJ-MASC-MARCOPOLO}       88.611.835/0006-33
${CNPJ-MARCOPOLO}            88611835000633
${SENHA-MARCOPOLO}           123456
${SENHA-CNPJ-MARCOPOLO}      mudar123!
${BOTAO-LOGIN-MARCOPOLO}     xpath=//*[@id="submit"]
${URL-MARCOPOLO-PERFIL}      https://marcopolo-sa.stg.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-MARCOPOLO}      xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

##ACESSOS LOGIN REDEPRO##
${IMG-LOGO-REDEPRO}        https://images.sandbox.canaldapeca.com.br/fornecedores/m/loja-rede-pro.jpg
${CAMPO-LOGIN-REDEPRO}     id: username
${CAMPO-SENHA-REDEPRO}     id: password
${EMAIL-REDEPRO}           redepro1@gmail.com
${CPF-MASC-REDEPRO}        521.099.660-33
${CPF-REDEPRO}             52109966033
${CNPJ-MASC-REDEPRO}       33.486.955/0001-50
${CNPJ-REDEPRO}            33486955000150
${SENHA-REDEPRO}           123456
${SENHA-CNPJ-REDEPRO}      mudar123!
${BOTAO-LOGIN-REDEPRO}     xpath=//*[@id="submit"]
${URL-REDEPRO-PERFIL}      https://rede-pro.sandbox.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-REDEPRO}      xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

#ACESSOS LOGIN COMPRE LAVORO##
${IMG-LOGO-LAVORO}        https://images.sandbox.canaldapeca.com.br/fornecedores/m/comprelavoro.jpg
${CAMPO-LOGIN-LAVORO}     id: username
${CAMPO-SENHA-LAVORO}     id: password
${EMAIL-LAVORO}           henry.sakane@holdingterraverde.com.br
${CPF-MASC-LAVORO}        521.099.660-33
${CPF-LAVORO}             52109966033
${CNPJ-MASC-LAVORO}       27.490.581/0001-43
${CNPJ-LAVORO}            27490581000143
${SENHA-LAVORO}           123456
${SENHA-CNPJ-LAVORO}      mudar123!
${BOTAO-LOGIN-LAVORO}     xpath=//*[@id="submit"]
${URL-LAVORO-PERFIL}      https://lavoro.sandbox.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-LAVORO}      xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

#ACESSOS LOGIN RODOBENS##
${IMG-LOGO-RODOBENS}        https://images.sandbox.canaldapeca.com.br/fornecedores/m/pecas-rodobens.jpg
${CAMPO-LOGIN-RODOBENS}     id: username
${CAMPO-SENHA-RODOBENS}     id: password
${EMAIL-RODOBENS}           vc.guarulhos@rodobens.com.br
${CPF-MASC-RODOBENS}        521.099.660-33
${CPF-RODOBENS}             52109966033
${CNPJ-MASC-RODOBENS}       60.812.088/0001-78
${CNPJ-RODOBENS}            60812088000178
${SENHA-RODOBENS}           123456
${SENHA-CNPJ-RODOBENS}      mudar123!
${BOTAO-LOGIN-RODOBENS}     xpath=//*[@id="submit"]
${URL-RODOBENS-PERFIL}      https://epecas.sandbox.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-RODOBENS}      xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

##ACESSOS LOGIN RUDEGON##
${IMG-LOGO-RUDEGON}        https://images.sandbox.canaldapeca.com.br/fornecedores/m/rudegon-a-loja-do-marceneiro.jpg
${CAMPO-LOGIN-RUDEGON}     id: username
${CAMPO-SENHA-RUDEGON}     id: password
${EMAIL-RUDEGON}           fernando@rudegon.com.br
${CPF-MASC-RUDEGON}        521.099.660-33
${CPF-RUDEGON}             52109966033
${CNPJ-MASC-RUDEGON}       79.985.479/0005-46
${CNPJ-RUDEGON}            79985479000546
${SENHA-RUDEGON}           123456
${SENHA-CNPJ-RUDEGON}      mudar123!
${BOTAO-LOGIN-RUDEGON}     xpath=//*[@id="submit"]
${URL-RUDEGON-PERFIL}      https://rudegon.sandbox.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-RUDEGON}      xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

##ACESSOS LOGIN RIVESA##
${IMG-LOGO-RIVESA}        https://images.sandbox.canaldapeca.com.br/fornecedores/m/rivesa-sa.jpg
${CAMPO-LOGIN-RIVESA}     id: username
${CAMPO-SENHA-RIVESA}     id: password
${EMAIL-RIVESA}           campomourao@rivesa.com.br
${CPF-MASC-RIVESA}        521.099.660-33
${CPF-RIVESA}             52109966033
${CNPJ-MASC-RIVESA}       75.642.256/0003-63
${CNPJ-RIVESA}            75642256000363
${SENHA-RIVESA}           123456
${SENHA-CNPJ-RIVESA}      mudar123!
${BOTAO-LOGIN-RIVESA}     xpath=//*[@id="submit"]
${URL-RIVESA-PERFIL}      https://rivesa.sandbox.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-RIVESA}      xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

##ACESSOS LOGIN SUPER CAMPO##
${IMG-LOGO-SUPERCAMPO}        https://images.sandbox.canaldapeca.com.br/fornecedores/m/supercampocombr.jpg
${CAMPO-LOGIN-SUPERCAMPO}     id: username
${CAMPO-SENHA-SUPERCAMPO}     id: password
${EMAIL-SUPERCAMPO}           supercampo@supercampo.com
${CPF-MASC-SUPERCAMPO}        486.826.340-40
${CPF-SUPERCAMPO}             48682634040
${CNPJ-MASC-SUPERCAMPO}       75.642.256/0003-63
${CNPJ-SUPERCAMPO}            75642256000363
${SENHA-SUPERCAMPO}           mudar123!
${SENHA-CNPJ-SUPERCAMPO}      mudar123!
${BOTAO-LOGIN-SUPERCAMPO}     xpath=//*[@id="submit"]
${URL-SUPERCAMPO-PERFIL}      https://supercampo.sandbox.clubecdp.com.br/minha-conta/meu-perfil
${BOTAO-SAIR-SUPERCAMPO}      xpath=/html/body/div/div/header/div/div[1]/div[3]/form/button
###

*** Keywords ***
### Setup e TEARDOWN
Abrir navegador
   Open Browser    about:blank   ${BROWSER-FIREFOX}
   Maximize Browser Window

Fechar navegador
   Close Browser

############################################
###      FUNÇÕES LOGIN -  TOCA OBRA      ###
############################################

Acessar a página de login do site (TocaObra)
   Go to              ${URL-TOCAOBRA}

Clicar na opção de "Login" (TocaObra)
   Click Element      ${CAMPO-LOGIN-TOCAOBRA}

Verifica a página de login (TocaObra)
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    id: loginForm
   Page Should Contain Image        xpath=//*[@id="login"]/div/a/img[@src="${IMG-LOGO-TOCAOBRA}"]

#--- Login com Email ---#
Informe campo Email (TocaObra)
   Input Text         ${CAMPO-LOGIN-TOCAOBRA}  ${EMAIL-TOCAOBRA}

Informe campo Senha Email (TocaObra)
   Click Element      ${CAMPO-SENHA-TOCAOBRA}
   Input Text         ${CAMPO-SENHA-TOCAOBRA}  ${SENHA-TOCAOBRA}
   capture page screenshot

#--- Login com CPF ---#
Informe campo CPF com mascara (TocaObra)
  Input Text         ${CAMPO-LOGIN-TOCAOBRA}  ${CPF-MASC-TOCAOBRA}

Informe campo CPF sem mascara (TocaObra)
  Input Text         ${CAMPO-LOGIN-TOCAOBRA}  ${CPF-TOCAOBRA}

Informe campo Senha CPF (TocaObra)
  Click Element      ${CAMPO-SENHA-TOCAOBRA}
  Input Text         ${CAMPO-SENHA-TOCAOBRA}  ${SENHA-TOCAOBRA}
  capture page screenshot

#--- Login com CNPJ ---#
Informe campo CNPJ com mascara (TocaObra)
  Input Text         ${CAMPO-LOGIN-TOCAOBRA}  ${CNPJ-MASC-TOCAOBRA}

Informe campo CNPJ sem mascara (TocaObra)
  Input Text         ${CAMPO-LOGIN-TOCAOBRA}  ${CNPJ-TOCAOBRA}

Informe campo Senha CNPJ (TocaObra)
  Click Element      ${CAMPO-SENHA-TOCAOBRA}
  Input Text         ${CAMPO-SENHA-TOCAOBRA}  ${SENHA-CNPJ-TOCAOBRA}
  capture page screenshot

Seleciona botão "Fazer login" (TocaObra)
  Click Element      ${BOTAO-LOGIN-TOCAOBRA}

Verifica página logado Home (TocaObra)
   Set Selenium Implicit Wait       30 seconds
   Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/section/h2
   Page Should Contain Image        xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO-TOCAOBRA}"]

Acessar a página de meu perfil (TocaObra)
   Go to    ${URL-TOCAOBRA-PERFIL}
   Set Selenium Implicit Wait       15 seconds

Seleciona opção de sair (TocaObra)
   Click Element      ${BOTAO-SAIR-TOCAOBRA}
   Go to              ${URL-TOCAOBRA}

Valida página de sucesso (TocaObra)
   Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/header/h1
   Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/section/div
   capture page screenshot

#########################################
###       FUNÇÕES LOGIN TRACBEL       ###
#########################################

Acessar a página de login do site (Tracbel)
   Go to              ${URL-TRACBEL}

Clicar na opção de "Login" (Tracbel)
   Click Element      ${CAMPO-LOGIN-TRACBEL}

Verifica a página de login (Tracbel)
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    id: loginForm
   Page Should Contain Image        xpath=//*[@id="login"]/a/img[@src="${IMG-LOGO-TRACBEL}"]
#--- Login com Email ---#
Informe campo Email (Tracbel)
   Input Text         ${CAMPO-LOGIN-TRACBEL}  ${EMAIL-TRACBEL}

Informe campo Senha Email (Tracbel)
   Click Element      ${CAMPO-SENHA-TRACBEL}
   Input Text         ${CAMPO-SENHA-TRACBEL}  ${SENHA-CNPJ-TRACBEL}
   capture page screenshot

#--- Login com CPF ---#
Informe campo CPF com mascara (Tracbel)
  Input Text         ${CAMPO-LOGIN-TRACBEL}  ${CPF-MASC-TRACBEL}

Informe campo CPF sem mascara (Tracbel)
  Input Text         ${CAMPO-LOGIN-TRACBEL}  ${CPF-TRACBEL}

Informe campo Senha CPF (Tracbel)
  Click Element      ${CAMPO-SENHA-TRACBEL}
  Input Text         ${CAMPO-SENHA-TRACBEL}  ${SENHA-TRACBEL}
  capture page screenshot

#--- Login com CNPJ ---#
Informe campo CNPJ com mascara (Tracbel)
  Input Text         ${CAMPO-LOGIN-TRACBEL}  ${CNPJ-MASC-TRACBEL}

Informe campo CNPJ sem mascara (Tracbel)
  Input Text         ${CAMPO-LOGIN-TRACBEL}  ${CNPJ-TRACBEL}

Informe campo Senha CNPJ (Tracbel)
  Click Element      ${CAMPO-SENHA-TRACBEL}
  Input Text         ${CAMPO-SENHA-TRACBEL}  ${SENHA-CNPJ-TRACBEL}
  capture page screenshot

Seleciona botão "Fazer login" (Tracbel)
  Click Element      ${BOTAO-LOGIN-TRACBEL}

Verifica página logado Home (Tracbel)
   Set Selenium Implicit Wait       30 seconds
   Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/header/nav[2]/i
   Page Should Contain Image        xpath=//*[@id="wrapper"]/header/nav[2]/div/div/nav/h1/a/img[@src="${IMG-LOGO-TRACBEL}"]

Acessar a página de meu perfil (Tracbel)
   Go to    ${URL-TRACBEL-PERFIL}
   Set Selenium Implicit Wait       15 seconds

Seleciona opção de sair (Tracbel)
   Click Element      ${BOTAO-SAIR-TRACBEL}
   Go to              ${URL-TRACBEL}

Valida página de sucesso (Tracbel)
   Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/header/h1
   Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/section/div
   capture page screenshot

#########################################
###      FUNÇÕES LOGIN MARCOPOLO      ###
#########################################

Acessar a página de login do site (Marcopolo)
  Go to              ${URL-MARCOPOLO}

Clicar na opção de "Login" (Marcopolo)
  Click Element      ${CAMPO-LOGIN-MARCOPOLO}

Verifica a página de login (Marcopolo)
  Set Selenium Implicit Wait       15 seconds
  Wait Until Element Is Visible    id: loginForm

#--- Login com Email ---#
Informe campo Email (Marcopolo)
  Input Text         ${CAMPO-LOGIN-MARCOPOLO}  ${EMAIL-MARCOPOLO}

Informe campo Senha Email (Marcopolo)
  Click Element      ${CAMPO-SENHA-MARCOPOLO}
  Input Text         ${CAMPO-SENHA-MARCOPOLO}  ${SENHA-CNPJ-MARCOPOLO}
  capture page screenshot

#--- Login com CPF ---#
Informe CPF com mascara (Marcopolo)
  Input Text         ${CAMPO-LOGIN-MARCOPOLO}  ${CPF-MASC-MARCOPOLO}

Informe CPF sem mascara (Marcopolo)
  Input Text         ${CAMPO-LOGIN-MARCOPOLO}  ${CPF-MARCOPOLO}

Informe Senha CPF (Marcopolo)
  Click Element      ${CAMPO-SENHA-MARCOPOLO}
  Input Text         ${CAMPO-SENHA-MARCOPOLO}  ${SENHA-MARCOPOLO}
  capture page screenshot

# #--- Login com CNPJ ---#
Informe campo CNPJ com mascara (Marcopolo)
  Input Text         ${CAMPO-LOGIN-MARCOPOLO}  ${CNPJ-MASC-MARCOPOLO}

Informe campo CNPJ sem mascara (Marcopolo)
  Input Text         ${CAMPO-LOGIN-MARCOPOLO}  ${CNPJ-MARCOPOLO}

Informe campo Senha CNPJ (Marcopolo)
  Click Element      ${CAMPO-SENHA-MARCOPOLO}
  Input Text         ${CAMPO-SENHA-MARCOPOLO}  ${SENHA-CNPJ-MARCOPOLO}
  capture page screenshot

Seleciona botão "Fazer login" (Marcopolo)
  Click Element      ${BOTAO-LOGIN-MARCOPOLO}

Verifica página logado Home (Marcopolo)
  Set Selenium Implicit Wait       30 seconds
  Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/header[1]/nav[2]/div
  Page Should Contain Image        xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO-MARCOPOLO}"]

Acessar a página de meu perfil (Marcopolo)
  Go to    ${URL-MARCOPOLO-PERFIL}
  Set Selenium Implicit Wait       15 seconds

Seleciona opção de sair (Marcopolo)
  Click Element      ${BOTAO-SAIR-MARCOPOLO}
  Go to              ${URL-MARCOPOLO}

Valida página de sucesso (Marcopolo)
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/header/h1
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/section/div
  capture page screenshot

############################################
###       FUNÇÕES LOGIN -  REDEPRO       ###
############################################

Acessar a página de login do site (RedePro)
   Go to              ${URL-REDEPRO}

Clicar na opção de "Login" (RedePro)
   Click Element      ${CAMPO-LOGIN-REDEPRO}

Verifica a página de login (RedePro)
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    id: loginForm
   Page Should Contain Image        xpath=/html/body/header/nav/div/div/div[1]/a/img[@src="${IMG-LOGO-REDEPRO}"]

#--- Login com Email ---#
Informe campo Email (RedePro)
   Input Text         ${CAMPO-LOGIN-REDEPRO}  ${EMAIL-REDEPRO}

Informe campo Senha Email (RedePro)
   Click Element      ${CAMPO-SENHA-REDEPRO}
   Input Text         ${CAMPO-SENHA-REDEPRO}  ${SENHA-CNPJ-REDEPRO}
   capture page screenshot

#--- Login com CPF ---#
Informe campo CPF com mascara (RedePro)
  Input Text         ${CAMPO-LOGIN-REDEPRO}  ${CPF-MASC-REDEPRO}

Informe campo CPF sem mascara (RedePro)
  Input Text         ${CAMPO-LOGIN-REDEPRO}  ${CPF-REDEPRO}

Informe campo Senha CPF (RedePro)
  Click Element      ${CAMPO-SENHA-REDEPRO}
  Input Text         ${CAMPO-SENHA-REDEPRO}  ${SENHA-REDEPRO}
  capture page screenshot

#--- Login com CNPJ ---#
Informe campo CNPJ com mascara (RedePro)
  Input Text         ${CAMPO-LOGIN-REDEPRO}  ${CNPJ-MASC-REDEPRO}

Informe campo CNPJ sem mascara (RedePro)
  Input Text         ${CAMPO-LOGIN-REDEPRO}  ${CNPJ-REDEPRO}

Informe campo Senha CNPJ (RedePro)
  Click Element      ${CAMPO-SENHA-REDEPRO}
  Input Text         ${CAMPO-SENHA-REDEPRO}  ${SENHA-CNPJ-REDEPRO}
  capture page screenshot

Seleciona botão "Fazer login" (RedePro)
  Click Element      ${BOTAO-LOGIN-REDEPRO}

Verifica página logado Home (RedePro)
   Set Selenium Implicit Wait       30 seconds
   Wait Until Element Is Visible    xpath=//*[@id="header-div"]/div[1]/nav/div
   Page Should Contain Image        xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO-REDEPRO}"]

Acessar a página de meu perfil (RedePro)
   Go to    ${URL-REDEPRO-PERFIL}
   Set Selenium Implicit Wait       15 seconds

Seleciona opção de sair (RedePro)
   Click Element      ${BOTAO-SAIR-REDEPRO}
   Go to              ${URL-REDEPRO}

Valida página de sucesso (RedePro)
   Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/header/h1
   Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/section/div
   capture page screenshot

############################################
###     FUNÇÕES LOGIN - COMPRE LAVORO    ###
############################################

Acessar a página de login do site (Lavoro)
  Go to              ${URL-LAVORO}

Clicar na opção de "Login" (Lavoro)
  Click Element      ${CAMPO-LOGIN-LAVORO}

Verifica a página de login (Lavoro)
  Set Selenium Implicit Wait       15 seconds
  Wait Until Element Is Visible    id: loginForm
  Page Should Contain Image        xpath=/html/body/main/div/div/a/img[@src="${IMG-LOGO-LAVORO}"]

#--- Login com Email ---#
Informe campo Email (Lavoro)
  Input Text         ${CAMPO-LOGIN-LAVORO}  ${EMAIL-LAVORO}

Informe campo Senha Email (Lavoro)
  Click Element      ${CAMPO-SENHA-LAVORO}
  Input Text         ${CAMPO-SENHA-LAVORO}  ${SENHA-CNPJ-LAVORO}
  capture page screenshot

#--- Login com CPF ---#
Informe campo CPF com mascara (Lavoro)
  Input Text         ${CAMPO-LOGIN-LAVORO}  ${CPF-MASC-LAVORO}

Informe campo CPF sem mascara (Lavoro)
  Input Text         ${CAMPO-LOGIN-LAVORO}  ${CPF-LAVORO}

Informe campo Senha CPF (Lavoro)
  Click Element      ${CAMPO-SENHA-LAVORO}
  Input Text         ${CAMPO-SENHA-LAVORO}  ${SENHA-LAVORO}
  capture page screenshot

#--- Login com CNPJ ---#
Informe campo CNPJ com mascara (Lavoro)
  Input Text         ${CAMPO-LOGIN-LAVORO}  ${CNPJ-MASC-LAVORO}

Informe campo CNPJ sem mascara (Lavoro)
  Input Text         ${CAMPO-LOGIN-LAVORO}  ${CNPJ-LAVORO}

Informe campo Senha CNPJ (Lavoro)
  Click Element      ${CAMPO-SENHA-LAVORO}
  Input Text         ${CAMPO-SENHA-LAVORO}  ${SENHA-CNPJ-LAVORO}
  capture page screenshot

Seleciona botão "Fazer login" (Lavoro)
  Click Element      ${BOTAO-LOGIN-LAVORO}

Verifica página logado Home (Lavoro)
  Set Selenium Implicit Wait       30 seconds
  Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/header/nav[3]
  Page Should Contain Image        xpath=/html/body/div[1]/header/nav[2]/div/div/nav/h1/a/img[@src="${IMG-LOGO-LAVORO}"]

Acessar a página de meu perfil (Lavoro)
  Go to    ${URL-LAVORO-PERFIL}
  Set Selenium Implicit Wait       15 seconds

Seleciona opção de sair (Lavoro)
  Click Element      ${BOTAO-SAIR-LAVORO}
  Go to              ${URL-LAVORO}

Valida página de sucesso (Lavoro)
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/header/h1
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/section/div
  capture page screenshot

############################################
###       FUNÇÕES LOGIN - RODOBENS       ###
############################################

Acessar a página de login do site (Rodobens)
  Go to              ${URL-RODOBENS}

Clicar na opção de "Login" (Rodobens)
  Click Element      ${CAMPO-LOGIN-RODOBENS}

Verifica a página de login (Rodobens)
  Set Selenium Implicit Wait       15 seconds
  Wait Until Element Is Visible    id: loginForm
  Page Should Contain Image        xpath=//*[@id="login"]/a/img[@src="${IMG-LOGO-RODOBENS}"]

#--- Login com Email ---#
Informe campo Email (Rodobens)
  Input Text         ${CAMPO-LOGIN-RODOBENS}  ${EMAIL-RODOBENS}

Informe campo Senha Email (Rodobens)
  Click Element      ${CAMPO-SENHA-RODOBENS}
  Input Text         ${CAMPO-SENHA-RODOBENS}  ${SENHA-CNPJ-RODOBENS}
  capture page screenshot

#--- Login com CPF ---#
Informe campo CPF com mascara (Rodobens)
  Input Text         ${CAMPO-LOGIN-RODOBENS}  ${CPF-MASC-RODOBENS}

Informe campo CPF sem mascara (Rodobens)
  Input Text         ${CAMPO-LOGIN-RODOBENS}  ${CPF-RODOBENS}

Informe campo Senha CPF (Rodobens)
  Click Element      ${CAMPO-SENHA-RODOBENS}
  Input Text         ${CAMPO-SENHA-RODOBENS}  ${SENHA-RODOBENS}
  capture page screenshot

#--- Login com CNPJ ---#
Informe campo CNPJ com mascara (Rodobens)
  Input Text         ${CAMPO-LOGIN-RODOBENS}  ${CNPJ-MASC-RODOBENS}

Informe campo CNPJ sem mascara (Rodobens)
  Input Text         ${CAMPO-LOGIN-RODOBENS}  ${CNPJ-RODOBENS}

Informe campo Senha CNPJ (Rodobens)
  Click Element      ${CAMPO-SENHA-RODOBENS}
  Input Text         ${CAMPO-SENHA-RODOBENS}  ${SENHA-CNPJ-RODOBENS}
  capture page screenshot

Seleciona botão "Fazer login" (Rodobens)
  Click Element      ${BOTAO-LOGIN-RODOBENS}

Verifica página logado Home (Rodobens)
  Set Selenium Implicit Wait       30 seconds
  Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/header/nav[3]
  Page Should Contain Image        xpath=//*[@id="wrapper"]/header/nav[2]/div/div/nav/h1/a/img[@src="${IMG-LOGO-RODOBENS}"]

Acessar a página de meu perfil (Rodobens)
  Go to    ${URL-RODOBENS-PERFIL}
  Set Selenium Implicit Wait       15 seconds

Seleciona opção de sair (Rodobens)
  Click Element      ${BOTAO-SAIR-RODOBENS}
  Go to              ${URL-RODOBENS}

Valida página de sucesso (Rodobens)
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/header/h1
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/section/div
  capture page screenshot

############################################
###        FUNÇÕES LOGIN - RUDEGON       ###
############################################

Acessar a página de login do site (Rudegon)
  Go to              ${URL-RUDEGON}

Clicar na opção de "Login" (Rudegon)
  Click Element      ${CAMPO-LOGIN-RUDEGON}

Verifica a página de login (Rudegon)
  Set Selenium Implicit Wait       15 seconds
  Wait Until Element Is Visible    id: loginForm
  Page Should Contain Image        xpath=/html/body/header/nav/div/div/div[1]/a/img[@src="${IMG-LOGO-RUDEGON}"]

#--- Login com Email ---#
Informe campo Email (Rudegon)
  Input Text         ${CAMPO-LOGIN-RUDEGON}  ${EMAIL-RUDEGON}

Informe campo Senha Email (Rudegon)
  Click Element      ${CAMPO-SENHA-RUDEGON}
  Input Text         ${CAMPO-SENHA-RUDEGON}  ${SENHA-CNPJ-RUDEGON}
  capture page screenshot

#--- Login com CPF ---#
Informe campo CPF com mascara (Rudegon)
  Input Text         ${CAMPO-LOGIN-RUDEGON}  ${CPF-MASC-RUDEGON}

Informe campo CPF sem mascara (Rudegon)
  Input Text         ${CAMPO-LOGIN-RUDEGON}  ${CPF-RUDEGON}

Informe campo Senha CPF (Rudegon)
  Click Element      ${CAMPO-SENHA-RUDEGON}
  Input Text         ${CAMPO-SENHA-RUDEGON}  ${SENHA-RUDEGON}
  capture page screenshot

#--- Login com CNPJ ---#
Informe campo CNPJ com mascara (Rudegon)
  Input Text         ${CAMPO-LOGIN-RUDEGON}  ${CNPJ-MASC-RUDEGON}

Informe campo CNPJ sem mascara (Rudegon)
  Input Text         ${CAMPO-LOGIN-RUDEGON}  ${CNPJ-RUDEGON}

Informe campo Senha CNPJ (Rudegon)
  Click Element      ${CAMPO-SENHA-RUDEGON}
  Input Text         ${CAMPO-SENHA-RUDEGON}  ${SENHA-CNPJ-RUDEGON}
  capture page screenshot

Seleciona botão "Fazer login" (Rudegon)
  Click Element      ${BOTAO-LOGIN-RUDEGON}

Verifica página logado Home (Rudegon)
  Set Selenium Implicit Wait       30 seconds
  Wait Until Element Is Visible    xpath=//*[@id="header-div"]/div[1]/nav
  Page Should Contain Image        xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO-RUDEGON}"]

Acessar a página de meu perfil (Rudegon)
  Go to    ${URL-RUDEGON-PERFIL}
  Set Selenium Implicit Wait       15 seconds

Seleciona opção de sair (Rudegon)
  Click Element      ${BOTAO-SAIR-RUDEGON}
  Go to              ${URL-RUDEGON}

Valida página de sucesso (Rudegon)
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/header/h1
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/section/div
  capture page screenshot

############################################
###        FUNÇÕES LOGIN - RIVESA        ###
############################################

Acessar a página de login do site (Rivesa)
  Go to              ${URL-RIVESA}

Clicar na opção de "Login" (Rivesa)
  Click Element      ${CAMPO-LOGIN-RIVESA}

Verifica a página de login (Rivesa)
  Set Selenium Implicit Wait       15 seconds
  Wait Until Element Is Visible    id: loginForm
  Page Should Contain Image        xpath=//*[@id="login"]/a/img[@src="${IMG-LOGO-RIVESA}"]

#--- Login com Email ---#
Informe campo Email (Rivesa)
  Input Text         ${CAMPO-LOGIN-RIVESA}  ${EMAIL-RIVESA}

Informe campo Senha Email (Rivesa)
  Click Element      ${CAMPO-SENHA-RIVESA}
  Input Text         ${CAMPO-SENHA-RIVESA}  ${SENHA-CNPJ-RIVESA}
  capture page screenshot

#--- Login com CPF ---#
Informe campo CPF com mascara (Rivesa)
  Input Text         ${CAMPO-LOGIN-RIVESA}  ${CPF-MASC-RIVESA}

Informe campo CPF sem mascara (Rivesa)
  Input Text         ${CAMPO-LOGIN-RIVESA}  ${CPF-RIVESA}

Informe campo Senha CPF (Rivesa)
  Click Element      ${CAMPO-SENHA-RIVESA}
  Input Text         ${CAMPO-SENHA-RIVESA}  ${SENHA-RIVESA}
  capture page screenshot

#--- Login com CNPJ ---#
Informe campo CNPJ com mascara (Rivesa)
  Input Text         ${CAMPO-LOGIN-RIVESA}  ${CNPJ-MASC-RIVESA}

Informe campo CNPJ sem mascara (Rivesa)
  Input Text         ${CAMPO-LOGIN-RIVESA}  ${CNPJ-RIVESA}

Informe campo Senha CNPJ (Rivesa)
  Click Element      ${CAMPO-SENHA-RIVESA}
  Input Text         ${CAMPO-SENHA-RIVESA}  ${SENHA-CNPJ-RIVESA}
  capture page screenshot

Seleciona botão "Fazer login" (Rivesa)
  Click Element      ${BOTAO-LOGIN-RIVESA}

Verifica página logado Home (Rivesa)
  Set Selenium Implicit Wait       30 seconds
  Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/header/nav[3]
  Page Should Contain Image        xpath=//*[@id="wrapper"]/header/nav[2]/div/div/nav/h1/a/img[@src="${IMG-LOGO-RIVESA}"]

Acessar a página de meu perfil (Rivesa)
  Go to    ${URL-RIVESA-PERFIL}
  Set Selenium Implicit Wait       15 seconds

Seleciona opção de sair (Rivesa)
  Click Element      ${BOTAO-SAIR-RIVESA}
  Go to              ${URL-RIVESA}

Valida página de sucesso (Rivesa)
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/header/h1
  Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/div/div/section/div
  capture page screenshot
