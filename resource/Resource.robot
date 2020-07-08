*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
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
${ADD-CARRINHO}     xpath=//*[@id="button-submit-cart-footer"]
${SEL-PROD}         css=#wrapper > div.highlight-products-section > div.go-home-container.clearfix.container > div > div > div > div > div.owl-stage-outer > div > div:nth-child(2)
${BOT-FRETE}        xpath=//*[@id="content"]/div[2]/form/div/div[2]/div[2]/button
${BOT-FORMA-PAG}    xpath=//*[@id="finalize-payment"]
${BOT-FORMA-ENTR}   id: radio35120
${BOLETO-BANC}      xpath=//*[@id="boleto-tab"]/a
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
    Wait Until Element Is Visible   xpath=//*[@id="wrapper"]/section/h2
    Page Should Contain Image       xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO}"]

Seleciona um produto
    Click Element      ${SEL-PROD}

Verifica página de ficha do produto
    Set Selenium Implicit Wait       15 seconds
    Wait Until Element Is Visible    ${TEXT-PRODUTO}
    Page Should Contain Element      ${ADD-CARRINHO}

Seleciona o botão "Adicionar ao Carrinho"
    Click Element     ${ADD-CARRINHO}

Verifica página do Carrinho
    Set Selenium Implicit Wait       15 seconds
    Wait Until Element Is Visible    xpath=//*[@id="content"]/div[1]/h3/div

Seleciona o botão "Finalizar Compra"
    Click Element     ${BOT-FRETE}

Verifica página de Escolha o frete
    Set Selenium Implicit Wait       15 seconds
    Wait Until Element Is Visible    id: order-resume

Seleciona o botão "Ir para forma de pagamento"
    Click Element     ${BOT-FORMA-ENTR}
    Click Element     ${BOT-FORMA-PAG}

Verifica página de forma de pagamento
    Set Selenium Implicit Wait       15 seconds
    Wait Until Element Is Visible    xpath=//*[@id="order"]/div[1]

Seleciona aba "Boleto Bancário" e finaliza compra
    Click Element     ${BOLETO-BANC}
    Set Selenium Implicit Wait       15 seconds
    Click Element     ${FINAL-PEDIDO}

Verifica página de sucesso
    Set Selenium Implicit Wait       15 seconds
    Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/main/div[1]/div[1]/div/div/div[2]/h2
    Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/main/div[1]/div[1]/div/div/div[2]/p[1]/strong
    capture page screenshot

### Conferências
