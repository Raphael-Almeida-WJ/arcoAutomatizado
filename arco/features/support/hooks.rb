require 'report_builder'

Before do
	@login = Login.new
	@myaccount = Myaccount.new
    @homepage = Homepage.new
    @cadastro = Cadastro.new
    @checkout = Checkout.new
end
After do |scenario|
    sleep 3
    Dir.mkdir("data") unless Dir.exist?("data")
    sufix = ("error" if scenario.failed?) || "success"
    name = scenario.name.tr(" ", "_").downcase
    image_name = "data/img/#{sufix}-#{name}.png"
    temp_shot = page.save_screenshot(image_name)
    file_shot = File.open(temp_shot, "rb").read
    final_shot = Base64.encode64(file_shot)
    embed(temp_shot, "image/png", "Clique aqui para ver a evidência!")
end
at_exit do
    time = Time.now
    data = time.strftime("%A: %d/%m/%Y") #=> "Data 04/09/2011"
    hora = time.strftime(" as %H:%M") #=> "08:56"
    # hora = time.strftime(" as %I:%M%p") #=> "08:56AM"
    ReportBuilder.configure do |config|
      config.input_path = "data/report.json"
      config.report_path = "data/cucumber_web_report"
      config.report_types = [:html]
      config.color = "red"
      config.report_tabs = %w[Overview Features Scenarios Errors]
      config.report_title = "Automação de Testes - Report"
      config.compress_images = true
      config.additional_info = { "Projeto" => "Projeto Final", "História" => "PDE-616", "Data de execução" => "#{data}" "#{hora}", "QA" => "Raphael Mathias" }
    end
  ReportBuilder.build_report
end


After('@CadastroSucesso') do
    #find("#switcher-language-trigger").click
    find("button[data-action='customer-menu-toggle']").click
    
    find("li[data-label='ou']").click
end
