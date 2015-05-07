require 'watir-webdriver'
require 'page-object'
include PageObject::PageFactory

Before do |scenario|
  @browser = Watir::Browser.new 'firefox'
end

After do |scenario|
  @browser.close
  Test.home_work.2
end