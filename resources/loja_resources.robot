*** Settings ***

  
Resource    ./main.robot

   

*** Variables ***

${url}                     http://lojavirtual.alterdata.com.br/prime10/
${cad_usuario}             //a[@href='http://lojavirtual.alterdata.com.br/prime10/app#/login/cliente'][contains(.,'Faça login ou cadastre-se')]
${link_cad_usuario}       (//a[contains(.,'Faça login ou cadastre-se')])[2]   
${input_nome_user}        Cadastro-Nome
${title_cadastro}         //div[@class='titulo'][contains(.,'Quero me cadastrar')]
${title_area_cliente}     //h1[@class='loja-titulo-cliente'][contains(.,'Área do cliente')]
${link_minha_conta}       //a[@href='http://lojavirtual.alterdata.com.br/prime10/app#/login/cliente'][contains(.,'minha conta')]

${CHROME_SHORTCUT_PATH}    C:\Users\DSNSHOP\Desktop\NFeasy Plugin 4.29.0.1.lnk

${botao_comprar}            (//button[contains(.,'COMPRAR')])[1]
${carrinho_compras}         //a[contains(@class,'link-carrinho header-color')] 
${botao_buscar}            //button[@type='submit'][contains(.,'Buscar')]   
${home}                    //img[@title='TF Racing']  
${botao_lixeira}            (//i[@class='glyphicon glyphicon-trash'])[1] 
${botao_concluir_compra}    (//a[contains(.,'CONCLUIR COMPRA')])[1] 
${aceite_termos}            //i[@ng-click='AceitarTermosECondicoesDeUso()'] 
${botao_finalizar_pedido}   //button[contains(.,'Finalizar pedido')] 
${pagamento_boleto}        //span[@class='ng-binding'][contains(.,'Boleto')]    



${ABAFADOR}                (//strong[contains(.,'ABAFADOR INOX 4" RACE CHROME')])[1]
${TURBINA}                 (//strong[contains(.,'TURBINA GARRETT GT4532OTX')])[1]
${FILTRO DE AR}            (//strong[contains(.,'FILTRO DE AR K&N')])[1]



@{LISTA DE PRODUTOS}     ${ABAFADOR}    ${TURBINA}    ${FILTRO DE AR}          

${SERVICE LOG PATH}  /path/to/service.log



*** Keywords ***

Abrir o navegador
    Open Browser   browser=chrome  options=add_experimental_option("detach", True)
    Maximize Browser Window
    

Fechar o navegador
    Capture Page Screenshot
    Close Browser
  

Acessar home do Ferraz Racing
    Go To    url=${url}   

Realizar cadastro de usuário
    
    Wait Until Element Is Visible    locator=${link_cad_usuario}
    Click Element     locator=${cad_usuario}
    Wait Until Element Is Visible    locator=${title_cadastro}
    ${nome}        FakerLibrary.name
    Input Text        locator=Cadastro-Nome    text=${nome}
    ${variable}=    Set Variable    FakerLibrary
    ${cpf}         ${variable}.cpf
    Input Text        locator=Cadastro-CPF    text=${cpf}
    Input Text        locator=Cadastro-DataNascimento    text=30/10/1990
    Select From List by Value    Cadastro-Sexo    number:1
    Input Text    locator=Cadastro-Tel1    text=21999999999
    ${emailFake}   FakerLibrary.Email
    Input Text    Cadastro-Email    ${EMAILFAKE}
    Input Text    Cadastro-Email-Confirma    ${emailFake}
    ${passwordFake}             FakerLibrary.Password
    Input Text    Cadastro-Senha    ${passwordFake}
    Input Text    Cadastro-Senha-Confirma    ${passwordFake}
    Click Button    (//button[contains(.,'Cadastrar')])[1]
    Wait Until Element Is Visible    ${title_area_cliente}
    Wait Until Element Is Visible    ${title_area_cliente}


Realizar login com dados inválidos

   Wait Until Element Is Visible    locator=${link_minha_conta}
   Click Element    locator=${link_minha_conta}
   ${emailFake}   FakerLibrary.Email
   Input Text    Login-Email    ${emailFake} 
   ${passwordFake}             FakerLibrary.Password
   Input Password    Login-Senha    ${passwordFake} 
   Click Button    //button[contains(@class,'btn btn-client btn-block login-btns-desktop ng-binding')]
   Wait Until Element Is Visible    //div[@class='ng-binding'][contains(.,'E-mail ou senha incorretos.')]

Realizar login com dados válidos 

   Wait Until Element Is Visible    locator=${link_minha_conta}
   Click Element    locator=${link_minha_conta}
   Input Text    Login-Email    clarapeixoto@example.com
   Input Password    Login-Senha    ZPgrjzBehF
   Click Button    //button[contains(@class,'btn btn-client btn-block login-btns-desktop ng-binding')] 
   Wait Until Element Is Visible    ${title_area_cliente}
   Click Element    locator=${home}



Adicionar itens 3 itens no carrinho de compras
  Wait Until Element Is Visible    locator=${ABAFADOR}
  Wait Until Element Is Visible    locator=${TURBINA}
  Wait Until Element Is Visible    locator=${FILTRO DE AR}

  FOR    ${produto}    IN    @{LISTA DE PRODUTOS}
          Click Element    locator=${produto}
          Click Element    locator=${botao_comprar}
          Wait Until Element Is Visible    locator=//img[@title='TF Racing']
          Click Element    locator=${home}
      
  END

Verificar se a quantidade de itens é atualizada
  Click Element    locator=${carrinho_compras}
  Element Should Be Visible    locator=//p[contains(.,'3 produtos')]  

Verificar se o total do carrinho é atualizado
  Element Should Be Visible    locator=(//strong[contains(.,'R$ 454,06')])[2]    

Pesquisa "${PRODUTO}"    
  Wait Until Element Is Visible    locator=//input[@name='search']
  Input Text    locator=//input[@name='search']    text=${PRODUTO}
  Click Button    locator=${botao_buscar}

Verificar se o produto "ABAFADOR LUZIAN" é exibido na busca    
  Element Should Be Visible    locator=(//strong[contains(.,'ABAFADOR LUZIAN')])[1]

Adicionar o produto "ABAFADOR LUZIAN" no carrinho 
  Wait Until Element Is Visible    locator=(//strong[contains(.,'ABAFADOR LUZIAN')])[1]  
  Click Element    locator=//img[contains(@alt,'ABAFADOR LUZIAN')]
  Wait Until Element Is Visible    locator=${botao_comprar}
  Click Element    locator=${botao_comprar}
  

Verificar se o produto "ABAFADOR LUZIAN" foi adicionado com sucesso
  Wait Until Element Is Visible    locator=//h1[contains(.,'Carrinho de compras')]
  Wait Until Element Is Visible    locator=(//strong[contains(.,'ABAFADOR LUZIAN')])[1]

Remover o produto "ABAFADOR LUZIAN" do carrinho
  Click Element    locator=${botao_lixeira}    

Verificar se o carrinho fica vazio  
  Element Should Be Visible    locator=//strong[contains(.,'VAZIO')]

Validar navegação categorias
  Wait Until Element Is Visible    locator=(//a[contains(.,'Race Chrome')])[2]
  Click Element    locator=(//a[contains(.,'Race Chrome')])[2]

Exibir produto da categoria
  Wait Until Element Is Visible    locator=(//strong[contains(.,'FILTRO RACE CRHOME')])[1]

Finalizar compra
  Wait Until Element Is Visible    locator=(//a[contains(.,'CONCLUIR COMPRA')])[1]
  Click Element    locator=${botao_concluir_compra}
  Wait Until Element Is Visible    locator=//h1[@class='loja-titulo-checkout'][contains(.,'Finalização do pedido')]
  Click Element    locator=//button[contains(.,'usar este endereço')]  
  Wait Until Element Is Visible    locator=//div[@class='col-sm-9 ng-binding'][contains(.,'SEDEX 10, entrega em 1 dia útil para o CEP 25954-000')]
  Click Element    locator=//div[@class='col-sm-9 ng-binding'][contains(.,'SEDEX 10, entrega em 1 dia útil para o CEP 25954-000')]
  Wait Until Element Is Visible    locator=//span[@class='ng-binding'][contains(.,'Boleto')]    
  Click Element    locator=${pagamento_boleto}   
  Click Element    locator=${aceite_termos} 
  Click Button     locator=${botao_finalizar_pedido}
  Wait Until Element Is Visible    locator=//p[contains(.,'Seu pedido foi recebido com sucesso. Obrigado por comprar em nossa loja!')]

          


  

  
    