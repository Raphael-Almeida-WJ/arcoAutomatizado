#language:pt 
Funcionalidade: End-to-end
     Para que o usuario consiga comprar produtos no sistema
     Devera ser realizado um processo de compra completo 

     
@end-to-end
Cenario: End to end boleto
Dado que o usuário está autenticado no sistema CEPEL
E adiciona um produto no seu carrinho
Quando ele realizar as etapas do checkout
E selecionar a  opção de pagamento com boleto
Então deve ser possível finalizar a compra com boleto


@end-to-end-cadastrar
Cenario: End to end boleto
Dado que o usuário se cadastra no sistema CEPEL
E adiciona um produto no seu carrinho
Quando ele realizar as etapas do checkout
E selecionar a  opção de pagamento com boleto
Então deve ser possível finalizar a compra com boleto