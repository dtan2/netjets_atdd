class BankHomePage
  include PageObject

  text_field(:user_name,:class=>'user name')
  text_field(:password,:class=>'password')
  button(:submit_info,:id=>'submit info')

  page_url 'http://www.chase.com'

  def gather_customer_info

  end


end