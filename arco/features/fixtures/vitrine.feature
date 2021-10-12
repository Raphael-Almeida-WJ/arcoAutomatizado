#language:pt 
Funcionalidade: testes de vitrine
     Para que o usuario consiga comprar produtos no sistema
     Deve conseguir ver os itens que deseja comprar

@vitrine
Cenario: aplicar um filtro para busca de produtos
Dado que o usuário está na vitrine da escola CEPEL
Quando seleciona um filtro de level e um filtro de grade
E clica no botao aplicar filtro
Então devem ser apresentados apenas os produtos referentes aquele filtro.


@vitrine
Cenario: checar se os dados no modal conferem com os do produto
Dado que o usuário está na vitrine da escola CEPEL
Quando clica no botão composição do kit de algum produto
Entao o modal que abrir deverá estar com os dados iguais aos do produto

@vitrine
Cenario:Checar mensagem “adicionou ao carrinho”
Dado que o usuário está na vitrine da escola CEPEL
Quando clica no botão adicionar ao carrinho de algum produto
Entao devera ser mostrada a mensagem voce adicionou um produto ao seu carrinho de compras


@vitrine
Cenario: checar redirecionamento do modal para a pagina do produto
Dado que o usuário está na vitrine da escola CEPEL
Quando clica no botão composição do kit de algum produto
E clica no link clique aqui
Entao a pagina que abrir deverá mostrar os dados do produto referente ao modal 

