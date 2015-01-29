Given(/^I login into the bank web site$/) do
   visit_bank_web_site
   login_as_normal_user
   gather_customer_info
end

Given(/^I have a checking account$/) do
    navigate to checking account
end

When(/^I want my overdraft amount$/) do
   request the overdraft amount
end


Then(/^the overdraft amount is "\$1000"$/) do |amount|
 data = gather the overdraft_amount
  expect(data).to eq amount
end