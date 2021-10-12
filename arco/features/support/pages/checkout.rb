class Checkout
    include Capybara::DSL
    include RSpec::Matchers


    def adicionar_produto_carrinho
        find(:xpath, "//*[@id='lne_catalog-vitrine']/div/div[2]/div[2]/div[1]/div/div/ol/li[2]/div/div[2]/div[4]/div/form/button/span").click  
        #find(EL["botaoAdicionarAoCarrinho"], match: :first).click
        sleep 13
    end
    def adicionar_produto_seu_carrinho
        click_link_or_button "Adicionar à mochila", match: :first
        sleep 15
    end

    def fazer_checkout
        find(EL["iconeMochila"]).click
        #click_link_or_button "carrinho de compras"
        #find(EL["botaoIrPagamento"]).click
        sleep 3
        click_link_or_button "Ir para o pagamento", match: :first
        sleep 3
        click_link_or_button "Continuar"
        sleep 3
        click_link_or_button "Continuar"
        sleep 3
    end
    
    def pagar_com_boleto
        
    find("#pagarme_billet").set(true)
    sleep 3
    find("#agreement_pagarme_billet_2").check
    sleep 3
    click_link_or_button "Finalizar Compra"
    sleep 6
       end  
     
     
       def mostrar_numero_pedido
        sleep 3
        expect(page).to have_text "O número do seu pedido"
    end 
    
    def checar_entrega_cepel
        expect(page).to have_text "Seu pedido será enviado para a Escola CEPEL"
    end

    def checar_pedido_cepel
        expect(page).to have_text "COLEÇÃO ANUAL 1º ANO"
    end
end
