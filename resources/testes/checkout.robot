*** Settings ***

Documentation    Essa suite testa o site da e-commerce TF Racing
Resource         ../loja_resources.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de teste 1 - Teste de Finalização de Compra
    [Documentation]    Este caso de teste simula um cenário de compra
    ...
    [Tags]    finalizar_compras


    Acessar home do Ferraz Racing
    # Adicionar produto no carrinho e finalizar compra
    # Validar pagamento da compra
    # Validar confirmação de compra no email
