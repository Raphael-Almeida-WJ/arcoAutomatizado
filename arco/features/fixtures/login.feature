#language:pt 
Funcionalidade: Login
    Para que o usuario possa ter acesso a todas as funcionalidades do sistema
    Devera ser efetuado o login

    
       
    
    @login
    Cenario: Login com aluno cadastrado
    Dado que o usuario acesse a pagina principal
    Quando inserir o login e a senha corretamente
    Então deverá ser redirecionado para a vitrine

     
    @login
    Cenario: Login sem aluno cadastrado
    Dado que o usuario acesse a pagina principal
    Quando inserir o login e a senha sem um aluno cadastrado
    Então deverá ser redirecionado para a pagina de minha conta
#Ir para a loja

    @login
    Cenario: Login com senha errada
    Dado que o usuario acesse a pagina principal
    Quando preenche os campos de login e senha 
    E informa uma senha incorreta
    Então deverá ver a mensagem de erro de autenticação

    #@login
    #Cenário: Login com usuário inválido
    #Dado que o usuario acesse a pagina principal
    #Quando preenche os campos de login e senha 
    #E informa um usuário inválido
    #Então deverá ver a mensagem de erro de autenticação

    @login
    Cenário: Login sem preencher campos
    Dado que o usuário acessa a página principal
    Quando não preencher o campo de login ou de senha
    Então deverá ver a mensagem de erro informando que são campos obrigatórios




    @login
    Cenário: Ver senha do login
    Dado que o usuario acesse a pagina principal
    Quando preenche os campos de login e senha 
    E clica no ícone de visualização de senha
    Então deverá ver a senha que foi preenchida