
 Dado("que o usuário está autenticado no sistema CEPEL") do
    visit 'https://lne.integration-5ojmyuq-y3i5xniwz5byk.us-3.magentosite.cloud/cepel'
    #click_link_or_button "Concordo"
    @login.preencher_login
    @login.clicar_botao_submit
    
  end


 Dado("que o usuário se cadastra no sistema CEPEL") do
  visit 'https://lne.integration-5ojmyuq-y3i5xniwz5byk.us-3.magentosite.cloud/cepel'
  
  #click_link_or_button "Concordo"
  click_link_or_button "Quero me cadastrar"

  @login.preencher_cadastro
end
  
  Dado("adiciona um produto no carrinho") do
    @checkout.adicionar_produto_carrinho
   
  
   
  end
  Dado("adiciona um produto no seu carrinho") do
    @checkout.adicionar_produto_seu_carrinho
   
  
   
  end
  
  Quando("ele realizar as etapas do checkout") do
    @checkout.fazer_checkout
   
  end
  
  Quando("selecionar a  opção de pagamento com boleto") do
    @checkout.pagar_com_boleto
  
  end
  
  Então("deve ser possível finalizar a compra com boleto") do
    @checkout.mostrar_numero_pedido
    
    
  end
  