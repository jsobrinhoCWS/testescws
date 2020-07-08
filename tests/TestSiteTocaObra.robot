*** Settings ***
Resource            ../resource/Resource.robot
Test Setup          Abrir navegador
# Test Teardown       Fechar navegador

### SETUP ele roda keyword antes da Suite ou antes de um teste
### TEARDOWN ele roda keyword depois de uma Suite ou um teste

*** Test Case ***
Cenário 01: Pedido de compra Logado
    Dado que estou na página home do site
    Quando eu selecionar o link "Entre"
    Então direciona o cliente para a página de login
    Quando informo os dados do login
    Então sistema direciona para página home
    Quando eu selecionar um produto
    Então sistema direciona para página do produto
    Quando eu seleciona botão "Adicionar ao Carrinho"
    Então sistema direciona para página de Carrinho
    Quando eu seleciona botão "Finalizar Compra"
    Então sistema direciona para página de Escolha o frete
    Quando eu seleciona botão "Ir para forma de pagamento"
    Então sistema direciona para página de forma de pagamento
    Quando eu seleciona aba "Boleto Bancário" e finaliza compra
    Então sistema direciona para página de Sucesso

#
# Cenário 02: Pedido de compra Não Logado
#     Dado que estou na página home do site
#     Quando selecionar um produto
#     Então direciona o cliente para a página de ficha de produto

*** Keywords ***
Dado que estou na página home do site
    Acessar a página home do site

Quando eu selecionar o link "Entre"
    Clicar na opção do link "Entre"

Então direciona o cliente para a página de login
    Verifica a página de login

Quando informo os dados do login
    Informe campo Email
    Informe campo Senha
    Seleciona botão "Fazer login"

Então sistema direciona para página home
    Verifica página logado Home

Quando eu selecionar um produto
    Seleciona um produto

Então sistema direciona para página do produto
    Verifica página de ficha do produto

Quando eu seleciona botão "Adicionar ao Carrinho"
    Seleciona o botão "Adicionar ao Carrinho"

Então sistema direciona para página de Carrinho
    Verifica página do Carrinho

Quando eu seleciona botão "Finalizar Compra"
    Seleciona o botão "Finalizar Compra"

Então sistema direciona para página de Escolha o frete
    Verifica página de Escolha o frete

Quando eu seleciona botão "Ir para forma de pagamento"
    Seleciona o botão "Ir para forma de pagamento"

Então sistema direciona para página de forma de pagamento
    Verifica página de forma de pagamento

Quando eu seleciona aba "Boleto Bancário" e finaliza compra
    Seleciona aba "Boleto Bancário" e finaliza compra

Então sistema direciona para página de Sucesso
    Verifica página de sucesso
