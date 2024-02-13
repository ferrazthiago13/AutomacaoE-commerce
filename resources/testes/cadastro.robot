*** Settings ***

Documentation    Essa suite testa o site da e-commerce TF Racing
Resource         ../loja_resources.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador


*** Test Cases ***



Caso de teste 1 - Teste de Cadastro
    [Documentation]    Este teste realiza o cadastro e validação do usuário
    ...
    [Tags]    cadastro_usuario

    Acessar home do Ferraz Racing
    Realizar cadastro de usuário
    

Caso de teste 2 - Verificar se a mensagem de erro é exibida corretamente ao inserir credenciais inválidas.
    [Documentation]    Este teste realiza a tentativa de login com dados inválidos
    ...
    [Tags]    login_invalido
    
    Acessar home do Ferraz Racing
    Realizar login com dados inválidos 

Caso de teste 3 - Realizar login com um usuário válido.
    [Documentation]    Este teste realiza um login com dados válidos
    ...
    [Tags]    login_valido     

    Acessar home do Ferraz Racing
    Realizar login com dados válidos 
    
    






    
    


