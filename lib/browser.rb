require 'selenium-webdriver'
require 'cucumber'
require 'require_all'


class Browser
  attr_reader :driver

  def initialize()
    @driver = start_browser()
  end

  def start_browser()
    case "#{$config['browserName']}"
      when 'firefox'
        Selenium::WebDriver::Firefox.driver_path = 'drivers/geckodriver.exe'
        @driver = Selenium::WebDriver.for :firefox
      when 'chrome'
        Selenium::WebDriver::Chrome.driver_path = 'drivers/chromedriver.exe'
        @driver = Selenium::WebDriver.for :chrome
      else
        Selenium::WebDriver::Firefox.driver_path = 'drivers/geckodriver.exe'
        @driver = Selenium::WebDriver.for :firefox
    end
  end

  def open_page()
    @driver.manage.window.maximize
    @driver.get($config['appURL'])
  end
end