Then(/^a list of accounts shown$/) do |table|
  # table is a table.hashes.keys # => [:accounts]

  table.hashes.each do |x|

  end
end

When(/^I want to associate overdraft to (.*)$/) do |accounts|
  pending
end

When(/^I am the home page (.*)$/) do |account|
  pending
end