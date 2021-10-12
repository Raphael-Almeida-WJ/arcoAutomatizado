#language:pt 
Funcionalidade: Cadastro
     Para que o usuario consiga acessar as funcionalidades do sistema
     Devera ser realizado um cadastro prévio

@cadastro
Cenario: Cadastro com sucesso
Dado que o usuário acessa a pagina inicial da escola CEPEL
E clica no botao de realizar cadastro
Quando ele realizar as etapas do checkout
E selecionar a  opção de pagamento com boleto
Então deve ser possível finalizar a compra com boleto
