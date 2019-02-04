require 'selenium-webdriver'
require 'require_all'
require 'yaml'
# require_all 'lib'

Before do |scenario|
  $config = YAML.load_file 'config/config.yml'
  @browser = Browser.new()
end

After do |scenario|
  @browser.driver.quit
end