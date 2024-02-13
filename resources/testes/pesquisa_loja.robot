*** Settings ***

Documentation    Essa suite testa o site da e-commerce TF Racing
Resource         ../loja_resources.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de teste 1 - Teste de Pesquisa de Produtos
    [Documentation]    Este caso de teste realiza a pesquisa de produtos na loja
    ...
    [Tags]    pesquisa_produtos
    
    Acessar home do Ferraz Racing
    # Validar pesquisa de produto  

Caso de teste 2 - Teste navegação categorias
    [Documentation]    Este caso de teste valida a navegação nas categorias  
    ...
    [Tags]    categorias
    
    Acessar home do Ferraz Racing
    Validar navegação categorias
    Exibir produto da categoria
    
     

