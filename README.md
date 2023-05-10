# Plano de Teste

**e-Zoop** / **loja virtual: http://lojavirtual.alterdata.com.br/prime10/**

*versão 1.0*

## Sobre o e-Zopp

O e-Zoop é uma plataforma de e-commerce desenvolvida pela Alterdata, que oferece soluções de software para empresas em diversos setores. É uma plataforma completa de comércio eletrônico, que permite que as empresas criem e gerenciem suas lojas virtuais de forma fácil e intuitiva, sem a necessidade de conhecimento técnico em programação. Com diversas funcionalidades, recursos de marketing digital e personalização total, o e-Zoop é uma opção interessante para pequenas e médias empresas que desejam ingressar no mercado de comércio eletrônico.

## 1 - Introdução

Este documento descreve os requisitos a testar, os  tipos de testes definidos para cada iteração e o cronograma dos testes ao longo do projeto. As seções referentes aos requisitos, recursos e cronograma servem para permitir ao líder do projeto acompanhar a evolução dos testes.

Com esse documento, você deve:
- Identificar informações de projeto existentes e os componentes de software que devem ser testados.
- Listar os Requisitos a testar.
- Recomendar e descrever as estratégias de teste a serem empregadas.
- Identificar os recursos necessários e prover uma estimativa dos esforços de teste.
- Listar os elementos resultantes do projeto de testes.


## 2 - Requisitos a Testar

1 - Cadastro de Usuário:
* Verificar se o cadastro de usuário é realizado com sucesso, com todos os campos preenchidos corretamente.
* Verificar se é possível cadastrar usuários com informações inválidas ou em branco e se esses casos estão sendo tratados corretamente.
* Verificar se o sistema envia um e-mail de confirmação de cadastro para o usuário.

2 - Login:
* Verificar se o login está funcionando corretamente, permitindo o acesso apenas a usuários cadastrados e com as credenciais corretas.
* Verificar se o login apresenta mensagem de erro caso o usuário insira informações incorretas.
* Verificar se há um link para redefinir a senha caso o usuário a esqueça.

3 - Pesquisa de Produtos:
* Verificar se a pesquisa de produtos está retornando os resultados corretos de acordo com as palavras-chave inseridas.
* Verificar se a pesquisa está funcionando corretamente mesmo com caracteres especiais ou em outras línguas.
* Verificar se o sistema oferece sugestões de produtos para o usuário.

4 - Página do Produto:
* Verificar se as informações do produto estão sendo exibidas corretamente, como preço, imagem e descrição.
* Verificar se é possível adicionar o produto ao carrinho de compras.
* Verificar se é possível avaliar o produto e visualizar as avaliações de outros usuários.

5 - Carrinho de Compras:
* Verificar se o carrinho de compras exibe todos os produtos adicionados pelo usuário.
* Verificar se é possível modificar a quantidade ou remover produtos do carrinho.
* Verificar se o carrinho de compras exibe o valor total dos produtos adicionados.

6 - Finalização da Compra:
* Verificar se a finalização da compra está sendo realizada corretamente, com as informações de pagamento e entrega sendo registradas corretamente.
* Verificar se é possível finalizar a compra com informações inválidas ou em branco e se esses casos estão sendo tratados corretamente.
* Verificar se o usuário recebe uma confirmação de compra por e-mail.

7 - Integração com Meios de Pagamento:
* Verificar se a integração com os meios de pagamento está funcionando corretamente, permitindo o processamento das transações de compra.
* Verificar se são aceitos os principais meios de pagamento utilizados pelos clientes.
* Verificar se as informações de pagamento são armazenadas de forma segura.

8 - Rastreamento de Pedidos:
* Verificar se o usuário pode visualizar o status do pedido em tempo real.
* Verificar se o usuário recebe uma notificação por e-mail ou mensagem de texto quando o status do pedido é alterado.
* Verificar se o sistema fornece informações sobre a transportadora e o número de rastreamento do pedido.

9 - Atendimento ao Cliente:
* Verificar se há um canal de atendimento ao cliente disponível para os usuários.
* Verificar se o sistema oferece suporte por chat ou e-mail.
* Verificar se as informações de contato do atendimento ao cliente são claras e fáceis de encontrar.

10 - Teste de Carga:
* Verificar se o site é capaz de suportar uma grande quantidade de usuários simultâneos sem apresentar lentidão ou falhas.
* Verificar se o site é capaz de suport
* Verificar se o site é capaz de suportar picos de tráfego durante promoções ou períodos de alta demanda.
* Verificar se o tempo de resposta do site é aceitável para os usuários em diferentes regiões geográficas.
* Verificar se o site é capaz de lidar com múltiplas transações simultâneas sem apresentar erros ou perda de informações.

11 - Teste de Segurança:
* Verificar se o site utiliza criptografia SSL para proteger as informações dos usuários durante a navegação.
* Verificar se o site está em conformidade com as normas de segurança de dados, como a GDPR ou a Lei Geral de Proteção de Dados.
* Verificar se o site é capaz de lidar com tentativas de invasão ou ataques de hackers sem comprometer as informações dos usuários.

12 - Teste de Navegabilidade:
* Verificar se o site é fácil de navegar e encontrar informações relevantes.
* Verificar se o site possui uma interface amigável e intuitiva para os usuários.
* Verificar se o site é responsivo, ou seja, se é capaz de se adaptar a diferentes dispositivos e tamanhos de tela.

13 - Teste de Usabilidade:
* Verificar se o site oferece uma experiência de usuário satisfatória e sem frustrações.
* Verificar se as funcionalidades do site são fáceis de usar e entender pelos usuários.
* Verificar se o site possui uma boa usabilidade em diferentes dispositivos e navegadores.

14 - Teste de Compatibilidade:
* Verificar se o site é compatível com diferentes navegadores, como Chrome, Firefox, Safari e Edge.
* Verificar se o site é compatível com diferentes sistemas operacionais, como Windows, Mac, Android e iOS.
* Verificar se o site é compatível com diferentes dispositivos, como desktops, laptops, smartphones e tablets.


## 3 - Tipos de teste

- Teste de interface de usuário;
- Teste de performance;
- Teste de carga;
- Teste de stress;
- Teste de segurança e controle de acesso;
- Teste de integração;
- Testes funcionais;


## 4 - Recursos

Esta seção deve descrever os recursos humanos, de ambiente de teste (hardware e software) e de ferramentas de automatização de testes necessários para execução dos testes que devem ser descritos nas subseções que seguem.

### 4.1 - Ferramenta de teste

1- Selenium: é uma ferramenta de automação de testes que permite simular interações do usuário com o site, como preencher formulários, clicar em botões e navegar entre páginas.

2- JMeter: é uma ferramenta de teste de desempenho que permite simular cargas de usuários e medir a capacidade do site de lidar com grande quantidade de acessos.

3- BrowserStack: é uma plataforma de teste de compatibilidade de navegadores, que permite testar o site em diferentes navegadores e dispositivos.

4 - OWASP ZAP: é uma ferramenta de teste de segurança que pode ser usada para identificar vulnerabilidades no site e avaliar a eficácia de medidas de segurança implementadas.

## 5 - Cronograma

Tipo de teste      | Duração | data de início | data de término
-------------------|---------|----------------|-----------------
planejar teste     |         | dd/mm/aaaa     | dd/mm/aaaa
projetar teste     |         | dd/mm/aaaa     | dd/mm/aaaa
implementar teste  |         | dd/mm/aaaa     | dd/mm/aaaa
executar teste     |         | dd/mm/aaaa     | dd/mm/aaaa
avaliar teste      |         | dd/mm/aaaa     | dd/mm/aaaa
