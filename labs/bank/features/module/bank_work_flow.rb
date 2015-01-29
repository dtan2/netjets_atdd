module BankWorkFlow

  def visit_bank_web_site
  visit_page BankHomePage
  end

  def login_as_normal_user
  on(BankHomePage) do |page|
      page.user_name = 'user_name'
      page.password ='abc123ABC'
      page.submit_info
   end
  end

  def navigate_to_the_last_page
    on(BankHomePage).gather_customer_info
    on(NectPage).next
    on(NexyPAge).next

  end


end
World BankWorkFlow