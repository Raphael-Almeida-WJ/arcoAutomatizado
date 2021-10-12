#language:pt 
Funcionalidade: Checkout
     Para que o usuario consiga finalizar uma compra
     Devem ser finalizados os passos do checkout

@checkout
Cenario: Checar endereco da escola
Dado que o usuário está autenticado no sistema CEPEL
E adiciona um produto no carrinho
Quando ele for para a primeira etapa do checkout
Entao deve ser possivel ver o endereco de entrega do material

@checkout1
Cenario: Checar produtos selecionados
Dado que o usuário está autenticado no sistema CEPEL
E adiciona um produto no carrinho
Quando ele for para a primeira etapa do checkout
E clicar em resumo do pedido
Entao deve ser possivel ver o detalhamento dos produto a ser comprado

@checkout
Cenario: Comprar com frete da transportadora
Dado que o usuário está autenticado no sistema CEPEL
E adiciona um produto no carrinho
Quando ele for para a primeira etapa do checkout
E clicar em Proximo
E entao selecionar a opcao Frete pela transportadora
Entao deve ser possivel finalizar a compra com esse frete

@checkout
Cenario: Comprar com frete dos correios
Dado que o usuário está autenticado no sistema CEPEL
E adiciona um produto no carrinho
Quando ele for para a primeira etapa do checkout
E clicar em Proximo
E entao selecionar a opcao Frete pelos correios
Entao deve ser possivel finalizar a compra com esse frete

@checkout
Cenario: Comprar com boleto
Dado que o usuário está autenticado no sistema CEPEL
E adiciona um produto no carrinho
Quando ele for para a primeira etapa do checkout
E clicar em Proximo duas vezes
E entao selecionar o pagamento com boleto
Entao deve ser possivel finalizar a compra com boleto

@checkout
Cenario: Comprar com cartao
Dado que o usuário está autenticado no sistema CEPEL
E adiciona um produto no carrinho
Quando ele for para a primeira etapa do checkout
E clicar em Proximo duas vezes
E entao selecionar o pagamento com cartao
Entao deve ser possivel finalizar a compra com cartao
#COLEÇÃO ANUAL GRUPO 3
#Faker::Business.credit_card_number