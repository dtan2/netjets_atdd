require 'watir-webdriver'
require 'page-object'
include PageObject::PageFactory

Before do |scenario|
@browser = Watir::Browser.new $browser_type.to_sys #convert to symbol
end

After do |scenario|
# @browser.close
end