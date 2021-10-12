class Produto
    include Capybara::DSL
    include RSpec::Matchers
    
    
    def mostrar_numero_pedido
        expect(page).to have_text "Obrigado por sua compra!"
    end    

    
end