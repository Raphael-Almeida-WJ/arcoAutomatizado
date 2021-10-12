Dado("que o usuário está na vitrine da escola CEPEL") do
    visit 'https://lne.develop-heuristica-353grqq-y3i5xniwz5byk.us-3.magentosite.cloud/cepel/'
    click_link_or_button "Concordo"
    @login.preencher_login
    @login.clicar_botao_submit
end
  
  Quando("seleciona um filtro de level e um filtro de grade") do
    find("select[name='studentLevelFilter'] option[value='EI']").click
    find("select[name='studentGradeFilter'] option[value='G4']").click
  end
  
  Quando("clica no botao aplicar filtro") do
    find("#products-list-filter-button").click
  end
  
  Então("devem ser apresentados apenas os produtos referentes aquele filtro.") do
    expect(page).to have_text "COLEÇÃO ANUAL GRUPO 4"
  end
  
 
  
  Quando("clica no botão composição do kit de algum produto") do
    
    find(:xpath, "//*[@id='lne_catalog-vitrine']/div/div[2]/div[2]/div[1]/div/div/ol/li[1]/div/div[2]/div[4]/span").click
    #find(".show-bundle-itens-unselectable").click
    #find('span', text: " Composição do KIT ").click
    #click_link_or_button "Composição do KIT", match: :first
                                                
  end
  
  Entao("o modal que abrir deverá estar com os dados iguais aos do produto") do
    expect(page).to have_text "COLEÇÃO ANUAL GRUPO 4"
  end
  
  Quando("clica no link clique aqui") do
    find(:xpath, "//*[@id='lne_catalog-vitrine']/div/div[2]/div[2]/div[1]/div/div/ol/li[1]/div/div[3]/div/p/a").click
  end
  
  Entao("a pagina que abrir deverá mostrar os dados do produto referente ao modal") do
    expect(page).to have_text "12071"
  end