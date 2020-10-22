*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${BROWSER}          firefox
${URL}              https://tocaobra.sandbox.clubecdp.com.br
${LINK}             xpath=//*[@id="wrapper"]/header/nav[1]//div/div[2]/a[1]
${IMG-LOGO}         https://images.sandbox.canaldapeca.com.br/fornecedores/m/toca-obra.jpg
${CAMPO-EMAIL}      xpath=//*[@id="username"]
${CAMPO-SENHA}      xpath=//*[@id="password"]
${EMAIL}            jsobrinho87@gmail.com
${SENHA}            testecws
${BOTAO-LOGIN}      xpath=//*[@id="submit"]
${TEXT-PRODUTO}     xpath=//*[@id="tab-content"]
${IMG-PROD}         https://images.sandbox.canaldapeca.com.br/produtos/g/28/81/chuveiro-acqua-storm-ultra-black-7800w-220v-6578128-1577467895156.jpg
${DETALHES}         id: detalhes
${BUTTON-ACEITE}    id: div-cookieTerms-float-button
${ADD-CARRINHO}     xpath=//*[@id="button-add-to-cart"]
${ADD-PROD}         xpath=//*[@id="content"]/div[2]/form/div/div[2]/div[1]/a
${SEL-PROD}         css=#wrapper > div.highlight-products-section > div.go-home-container.clearfix.container > div > div > div > div > div.owl-stage-outer > div > div:nth-child(2)
${SEL-CATEGORIA1}   xpath=//*[@id="wrapper"]/section/ul/li[2]/a/span[1]
${SEL-CATEGORIA2}   xpath=//*[@id="content"]/section/div[2]/div/div/div/div/div/div/li[2]/a/span[1]
${SEL-PROD2}        css=#div-tipo-visualizacao > div > div > div > div:nth-child(2) > div.y-image
${BOT-FRETE}        xpath=/html/body/div[1]/main/div/div[2]/form/div/div[2]/div[2]/button
${BOT-CUPOM}        id: coupon-input
${CUPOM}            Q48K69DN9QO7
${BOT-APLI-CUPOM}   xpath=//*[@id="coupon-form"]/div/button
${BOT-FORMA-PAG}    id: finalize-payment
${BOT-FORMA-ENTR}   xpath=/html/body/div[1]/main/form/div[1]/div[2]/div/div[2]/div/div[1]/label/input
${BOLETO-BANC}      id: boleto-tab
${FINAL-PEDIDO}     xpath=//*[@id="template"]/div[1]/div[1]/section/div[2]/a

*** Keywords ***
### Setup e TEARDOWN
Abrir navegador
  Open Browser    about:blank   ${BROWSER}
  Maximize Browser Window

Fechar navegador
  Close Browser

### Ações
Acessar a página home do site
   Go to              ${URL}
   Title Should Be    Toca Obra

Clicar na opção do link "Entre"
   Click Element      ${LINK}

Verifica a página de login
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    id: loginForm
   Page Should Contain Image        xpath=//*[@id="login"]/div/a/img[@src="${IMG-LOGO}"]

Informe campo Email
   Click Element      ${CAMPO-EMAIL}
   Input Text         ${CAMPO-EMAIL}  ${EMAIL}

Informe campo Senha
   Click Element      ${CAMPO-SENHA}
   Input Text         ${CAMPO-SENHA}  ${SENHA}

Seleciona botão "Fazer login"
   Click Element      ${BOTAO-LOGIN}

Verifica página logado Home
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/section/h2
   Page Should Contain Image        xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO}"]

Seleciona um produto
   Click Element      ${SEL-PROD}

Verifica página de ficha do produto
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    ${TEXT-PRODUTO}
   Page Should Contain Element      ${DETALHES}

Seleciona o botão "Adicionar ao Carrinho"
   Set Selenium Implicit Wait       15 seconds
   Click Element     ${BUTTON-ACEITE}
   Click Element     ${ADD-CARRINHO}

Verifica página do Carrinho
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    xpath=//*[@id="content"]/div[1]/h3/div

### Adiciona mais produtos ###
Seleciona o botão "Adicionar mais itens"
   Set Selenium Implicit Wait       15 seconds
   Click Element      ${ADD-PROD}
   Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/header/nav[2]
   Page Should Contain Image        xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO}"]

Seleciona um segundo produto
   Click Element      ${SEL-CATEGORIA1}
   Click Element      ${SEL-CATEGORIA2}
   Click Element      ${SEL-PROD2}

Seleciona botão "Adicionar ao Carrinho 2"
   Set Selenium Implicit Wait       15 seconds
   Click Element     ${ADD-CARRINHO}

Seleciona um terceiro produto
   Click Element      ${SEL-CATEG1}   xpath=//*[@id="wrapper"]/section/ul/li[1]/a/span[1]
   Click Element      ${SEL-CATEG2}   xpath=
   Click Element      ${SEL-PROD2}

Seleciona botão "Adicionar ao Carrinho 3"
   Set Selenium Implicit Wait       15 seconds
   Click Element     ${ADD-CARRINHO}

Verifica página de Escolha o frete 3
  Set Selenium Implicit Wait       15 seconds
  Click Element      ${BOT-FORMA-ENTR}

Seleciona o botão "Finalizar Todas as Compra"
    Set Selenium Implicit Wait       15 seconds
    #   Scroll Element Into View         xpath=//*[@id="wrapper"]/footer/article
    Click Element                    xpath=/html/body/div[1]/footer/article/form/input[1]
    Set Selenium Implicit Wait       15 seconds
    Click Element      ${BOT-FRETE}
##############################

Seleciona o botão "Finalizar Compra"
   Set Selenium Implicit Wait       15 seconds
#   Scroll Element Into View         xpath=//*[@id="wrapper"]/footer/article
   Click Element                    xpath=/html/body/div[1]/footer/article/form/input[1]
   Set Selenium Implicit Wait       15 seconds
   Click Element      ${BOT-FRETE}

Verifica página logado carrinho
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    xpath=//*[@id="content"]/div[1]/h3/div

Verifica página de Escolha o frete
   Set Selenium Implicit Wait       15 seconds
   Click Element      ${BOT-FORMA-ENTR}

Seleciona campo de cupom de promoção
   Click Element      ${BOT-CUPOM}

Verifica se o cupom é valido
   Input Text         ${BOT-CUPOM}  ${CUPOM}
   Click Element      ${BOT-APLI-CUPOM}

Seleciona o botão "Ir para forma de pagamento"
   Wait Until Element Is Visible    id: order-resume
   Click Element                    id: singleFooter
   Click Element     ${BOT-FORMA-PAG}

Verifica página de forma de pagamento
   Set Selenium Implicit Wait       120 seconds
   Wait Until Element Is Visible    xpath=//*[@id="template"]/div[1]/div/div

Seleciona aba "Boleto Bancário" e finaliza compra
   Set Selenium Implicit Wait       120 seconds
   Click Element     ${BOLETO-BANC}
   Click Element                    id: singleFooter
   Set Selenium Implicit Wait       15 seconds
   Click Element     ${FINAL-PEDIDO}

Verifica página de sucesso
   Set Selenium Implicit Wait       15 seconds
   Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/main/div[1]/div[1]/div/div/div[2]/h2
   Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/main/div[1]/div[1]/div/div/div[2]/p[1]/strong
   capture page screenshot

### Conferências
