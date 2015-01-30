require 'page-object'

class Survey
  include PageObject

  page_url "bit.ly/watir-webdriver-demo"

  text_field(:name, :id => 'entry_1000000')
  select(:language, :id => 'entry_1000001')
  button(:submit, :name => 'submit')

  def enter_some_page_info(name, language)
    self.name = name
    self.language = language
    submit
  end
end