require 'report_builder'
require 'date'

#Executa antes de rodar qualquer cenário, já faz o instanciamente das classes e redimenziona a janela do browser
Before do
    @home_page = HomePage.new
    @product_page = ProductPage.new
    @cart_page = CartPage.new
  
    page.current_window.resize_to(1440, 900)
end

#Captura um print caso o cenário falhe
After do |scenario|
    if scenario.failed?
        temp_shot = page.save_screenshot("log/temp_shot.png")
        screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
        attach(screenshot, "image/png")
    end
end

@current_date = DateTime.now

#Gera um status report
at_exit do
    ReportBuilder.configure do |config|
        config.input_path = 'log/report.json'
        config.report_path = 'log/report'
        config.report_types = [:html]
        config.report_title = 'Teste QA - ViaHUB'
        config.compress_image = true
        config.additional_info = { 'App'=> 'Web', 'Data de execução' => @current_date }
    end
    ReportBuilder.build_report
end