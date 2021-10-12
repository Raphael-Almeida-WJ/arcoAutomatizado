class Myaccount
    include Capybara::DSL
    include RSpec::Matchers
    
    
    def checar_pagina_vitrine
        expect(page).to have_text "Olá, raphael"
    end    

    
end