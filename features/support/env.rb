require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

# Variável global para setar a url do ambiente desejado
CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV['ENV_TYPE']}.yaml"))

# Posibilita executar os testes em diferentes browsers
case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "headless"
  @driver = :selenium_chrome_headless
else
  puts "Invalid Browser"
end

# Configuração principal do projeto
Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = CONFIG['url']
    config.default_max_wait_time = 10
end