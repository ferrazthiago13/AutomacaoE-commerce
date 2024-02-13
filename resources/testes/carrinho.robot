*** Settings ***

Documentation    Essa suite testa o site da e-commerce TF Racing
Resource         ../loja_resources.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de teste 1 - Teste de Adição de Produto ao Carrinho
    [Documentation]    Este caso de teste simula adicionar itens no carrinho de compras
    ...
    [Tags]    carrinho_compras


    Acessar home do Ferraz Racing
    Adicionar itens 3 itens no carrinho de compras
    Verificar se a quantidade de itens é atualizada
    Verificar se o total do carrinho é atualizado
    
Caso de teste 2 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    ...
    [Tags]    carrinho_compras


    Acessar home do Ferraz Racing
    Pesquisa "ABAFADOR LUZIAN"
    Verificar se o produto "ABAFADOR LUZIAN" é exibido na busca
    Adicionar o produto "ABAFADOR LUZIAN" no carrinho
    Verificar se o produto "ABAFADOR LUZIAN" foi adicionado com sucesso
    Remover o produto "ABAFADOR LUZIAN" do carrinho
    Verificar se o carrinho fica vazio

Caso de teste 3 - Finalizar compra
    [Documentation]    Esse teste finaliza uma rotina de compra
    ...
    [Tags]    carrinho_compras

    Acessar home do Ferraz Racing
    Realizar login com dados válidos 
    Pesquisa "ABAFADOR LUZIAN"
    Verificar se o produto "ABAFADOR LUZIAN" é exibido na busca
    Adicionar o produto "ABAFADOR LUZIAN" no carrinho
    Finalizar compra


        


