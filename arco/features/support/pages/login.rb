class Login
    include Capybara::DSL
    include RSpec::Matchers
    
    
        def acessar_pagina_login
         find(EL["botaoPaginaLogin"]).click
        end    
          
    
        def ir_login_fanon
            find(EL["irLoginFanon"]).click
        end

        def preencher_login
            find(EL["campoEmail"]).set "raphael.almeida@webjump.com.br"
            find(EL["campoSenha"]).set "raphael.123"
            
        end

        def preencher_login_sem_aluno
            find(EL["campoEmail"]).set "raphael2@gmail.com"
            find(EL["campoSenha"]).set "raphael.123"
        end
       

        def clicar_botao_submit
            find(:xpath, "//*[@id='send2']").click
            
            #find(EL["botaoLogin"]).click
            
        end
    
        def mostrar_erro_autenticacao
         expect(page).to have_text "Login ou senha incorretos, tente novamente."
        end

    
    
       
        def preencher_cadastro
            find("#firstname").set Faker::Name.name  
            find("#taxvat").set Faker::CPF.numeric 
            find("#email_address").set Faker::Internet.email
            find("#dob_day").set "22"
            find("#dob_month").set "02"
            find("#dob_year").set "2002"
            find("select[name='gender'] option[value='1']").click
            find("#telephone").set "(83)9266-7083"
            find("#telephone_secondary").set "(83)9266-7083"
            find("#zip").set "2132131"
            sleep 2
            find("#zip").set "21321310"
            sleep 3
            find("#street_2").set "111"
            find("#street_1").set "RUA URUCUIA"
            find("#street_4").set "VILA VALQUEIRE"
            #find(:xpath, "//*[@id='city']").set "Rio de Janeiro"
            #find(:xpath, "//*[@id='region']").set "Rio de Janeiro"
            
            find("#city").set "RIO DE JANEIRO"
            find("#region").set "RIO DE JANEIRO"
            find(".delete-student").click
            find("input[title='Aluno']").set "Maria Joaquina"
            #find("input[title='Aluno']").set Faker::Name.name_with_middle 
            find("select[name='student[1][level]'] option[value='EI']").click     
            find("select[name='student[1][grade]'] option[value='G5']").click 
            find(:xpath, "//*[@id='student[1][tax_vat]']").set Faker::CPF.numeric
           # find("input[title='CPF']").set Faker::CPF.numeric
            find("#level-confirmation").set(true)
            find("#password").set "raphael.123"
            find("#password-confirmation").set "raphael.123"
            find("#login_as_customer_agreement").set(true)
            find("#taxvat").set Faker::CPF.numeric 
            click_link_or_button "Criar conta"
            
        end
        def ver_senha
            find(:xpath, "//*[@id='login-form']/fieldset/div[3]/div/img").click
            
        end

        

        def cad_aluno
            expect(page).to have_text "Você deve cadastrar pelo menos um aluno"
        
        end
        def checar_senha
            expect(page.has_xpath?("//*[@id='login-form']/fieldset/div[3]/div/img")).to eq true
            #expect(page).to have_text "raphael.123"
        end


        def preencher_campos_login_senha_errada
            
            find(EL["campoSenha"]).set  "123456"
            
    
    
        end
    
        def preencher_campos_login_email_nao_cadastrado
            find(EL["campoEmail"]).set "raphaaaael@gmail.com"
            find(EL["campoSenha"]).set  "12345"
           
        end
    
       

        def nao_preencher_campos_login
            find(EL["campoEmail"]).set ""
            find(EL["campoSenha"]).set  ""
            
        end
    
        def mostrar_erro_preencher_campos
                 expect(page).to have_text "Este é um campo obrigatório"
           end

           
    end
