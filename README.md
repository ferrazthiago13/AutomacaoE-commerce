# Plano de Teste

**e-Zoop** / **loja virtual: http://lojavirtual.alterdata.com.br/prime10/**

*versão 1.0*

## Sobre o e-Zopp

O e-Zoop é uma plataforma de e-commerce desenvolvida pela Alterdata, que oferece soluções de software para empresas em diversos setores. É uma plataforma completa de comércio eletrônico, que permite que as empresas criem e gerenciem suas lojas virtuais de forma fácil e intuitiva, sem a necessidade de conhecimento técnico em programação. Com diversas funcionalidades, recursos de marketing digital e personalização total, o e-Zoop é uma opção interessante para pequenas e médias empresas que desejam ingressar no mercado de comércio eletrônico.

Com esse documento, você deve:
- Identificar informações de projeto existentes e os componentes de software que devem ser testados.
- Listar os Requisitos a testar.
- Recomendar e descrever as estratégias de teste a serem empregadas.
- Identificar os recursos necessários e prover uma estimativa dos esforços de teste.
- Listar os elementos resultantes do projeto de testes.


## Plano de Testes Automatizados com Robot Framework e JMeter

### Objetivo
O objetivo deste plano de testes automatizados é verificar a funcionalidade e o desempenho do sistema de e-commerce, utilizando o Robot Framework para os testes de interface do usuário e o Apache JMeter para os testes de carga e desempenho.

### Ferramentas de Automação
As seguintes ferramentas de automação serão utilizadas para executar os testes automatizados:

1. Robot Framework: Para a automação dos testes de interface do usuário.
2. SeleniumLibrary: Para interagir com a interface do usuário e realizar as verificações.
3. Apache JMeter: Para realizar testes de carga e desempenho automatizados.

### Casos de Teste

1. Teste de Login
   - Verificar o cadastro de usuário.
   - Verificar se é possível realizar login com um usuário válido.
   - Verificar se a mensagem de erro é exibida corretamente ao inserir credenciais inválidas.
   - Verificar se o redirecionamento para a página correta ocorre após o login bem-sucedido.

3. Teste de Adição de Produto ao Carrinho
   - Verificar se é possível adicionar um produto ao carrinho corretamente.
   - Verificar se o valor total do carrinho é atualizado corretamente após a adição do produto.
   - Verificar se a quantidade de itens no carrinho é atualizada corretamente.

4. Teste de Finalização de Compra
   - Verificar se é possível selecionar um produto, adicionar ao carrinho e finalizar a compra com sucesso.
   - Verificar se o processo de pagamento é concluído corretamente, usando dados de cartão de teste.
   - Verificar se o usuário recebe um e-mail de confirmação da compra.

5. Teste de Pesquisa de Produtos
   - Verificar se a pesquisa retorna resultados relevantes ao pesquisar por um termo específico.
   - Verificar se a ordenação dos resultados está correta de acordo com os critérios selecionados.
   - Verificar se a paginação está funcionando corretamente ao navegar pelos resultados da pesquisa.

6. Teste de Carga com JMeter
   - Configurar um teste de carga utilizando o Apache JMeter para simular múltiplos usuários acessando o sistema de forma simultânea.
   - Verificar se o sistema lida adequadamente com a carga de usuários, mantendo a estabilidade e o desempenho.
   - Monitorar métricas de desempenho, como tempo de resposta, taxa de erro e capacidade de processamento.

### Ambiente de Teste
O ambiente de teste deve ser configurado com as seguintes características:

- Sistema operacional: Windows
- Navegadores: Chrome, Firefox e Safari


### Estratégia de Execução dos Testes
1. Configurar o ambiente de teste com os pré-requisitos necessários.
2. Executar os testes automatizados do Robot Framework para os casos de teste definidos.
3. Executar os testes automatizados de carga com o Apache JMeter para avaliar o desempenho do sistema.
4. Registrar os resultados dos testes automatizados, incluindo sucesso, falha ou erro.
5. Analisar os resultados e identificar falhas, comport
