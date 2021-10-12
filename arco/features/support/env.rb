require "capybara"
require "capybara/cucumber" 
require "selenium-webdriver"
require "faker" 
require "rspec"
require "yaml"
require "report_builder"
require 'cpf_faker'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 15
end

EL = YAML.safe_load(File.read('features/elements.yaml'))
