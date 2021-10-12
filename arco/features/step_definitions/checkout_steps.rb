Dado("que o usuário acessa a pagina inicial da escola CEPEL") do
    visit 'https://lne.develop-heuristica-353grqq-y3i5xniwz5byk.us-3.magentosite.cloud/cepel/'
    click_link_or_button "Concordo"
    @login.preencher_login
    @login.clicar_botao_submit
  end
  
  Dado("clica no botao de realizar cadastro") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("ele for para a primeira etapa do checkout") do
    find(EL["iconeMochila"]).click
        #click_link_or_button "carrinho de compras"
        #find(EL["botaoIrPagamento"]).click
        sleep 3
        click_link_or_button "Ir para o pagamento", match: :first
  end
  
  Entao("deve ser possivel ver o endereco de entrega do material") do
    @checkout.checar_entrega_cepel
  end
  
  Quando("clicar em resumo do pedido") do
  #  click_link_or_button "Item no Carrinho"
    
   
    #find(:xpath, "//*[@id='opc-sidebar']/div[1]/div/div[1]").click
  end
  
  Entao("deve ser possivel ver o detalhamento dos produto a ser comprado") do
    @checkout.checar_pedido_cepel
  end
  
  Quando("clicar em Proximo") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("entao selecionar a opcao Frete pela transportadora") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("deve ser possivel finalizar a compra com esse frete") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("entao selecionar a opcao Frete pelos correios") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em Proximo duas vezes") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("entao selecionar o pagamento com boleto") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("deve ser possivel finalizar a compra com boleto") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("entao selecionar o pagamento com cartao") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("deve ser possivel finalizar a compra com cartao") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  