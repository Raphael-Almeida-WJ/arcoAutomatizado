Dado('que o usuario acesse a pagina principal') do
    visit 'https://lne.develop-heuristica-353grqq-y3i5xniwz5byk.us-3.magentosite.cloud/cepel/'
    click_link_or_button "Concordo"
  end
  

  
  
  Quando("inserir o login e a senha corretamente") do
    @login.preencher_login
    @login.clicar_botao_submit
  
  end
  
  Então("deverá ser redirecionado para a vitrine") do
    @myaccount.checar_pagina_vitrine
  end
  
  Quando("preenche os campos de login e senha") do
    @login.preencher_login

  end
  
  Quando("clica no ícone de visualização de senha") do
    @login.ver_senha
  end
  
  Então("deverá ver a senha que foi preenchida") do
    @login.checar_senha
  end

  Quando("informa uma senha incorreta") do
    @login.preencher_campos_login_senha_errada
    @login.clicar_botao_submit
  end
  
  Então("deverá ver a mensagem de erro de autenticação") do
    @login.mostrar_erro_autenticacao
  end
  
  Quando("informa um usuário inválido") do
    @login.preencher_campos_login_email_nao_cadastrado
    @login.clicar_botao_submit
  end
  
  Dado("que o usuário acessa a página principal") do
    visit 'https://lne.develop-heuristica-353grqq-y3i5xniwz5byk.us-3.magentosite.cloud/cepel/'
    click_link_or_button "Concordo"
  end
  
  Quando("não preencher o campo de login ou de senha") do
     #@login.nao_preencher_campos_login
     @login.clicar_botao_submit
  end
  
  Então("deverá ver a mensagem de erro informando que são campos obrigatórios") do
    @login.mostrar_erro_preencher_campos
  end


  Quando("inserir o login e a senha sem um aluno cadastrado") do
    @login.preencher_login_sem_aluno
    @login.clicar_botao_submit
  end
  
  Então("deverá ser redirecionado para a pagina de minha conta") do
    @login.cad_aluno
  end




  
  Quando('o usuario preencher campos com a senha errada') do
    @login.preencher_campos_login_senha_errada
  end
  
  Então('deve ver uma mensagem de erro dizendo que a autenticacao falhou') do
    @login.mostrar_erro_autenticacao
  end
  
  Quando('o usuario preencher campos com um login nao cadastrado') do
    @login.preencher_campos_login_email_nao_cadastrado
  end
  
  Quando('o usuario preencher campos com um email invalido') do
    @login.preencher_campos_login_email_invalido
  end
  
  Então('deve ver uma mensagem de erro dizendo que o email e invalido') do
    @login.mostrar_email_invalido
    
  end
  
  Quando('o ususario nao preencher os campos') do
    @login.nao_preencher_campos_login
  end
  
  Então('deve ver uma mensagem de erro dizendo que é necessario informar os campos') do
    @login.mostrar_erro_preencher_campos
  end