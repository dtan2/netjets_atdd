$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'calculator'

Before do
  @calc = Calculator.new
end

Given /^I have entered (.*) into the calculator$/ do |num|
  @calc.push num.to_i
end

When /^I press (.*)$/ do |op|
  @result = @calc.send op
end

Then /^the result should be (.*) on the screen$/ do |output|
  assert_equal output.to_f, @result
end

Given /^I have done some arithmetic$/ do
  @calc.push(3)
  @calc.push(4)
  @result = @calc.add
  @calc.memadd
end

When /^I have __$/ do
  @calc.clear
end

Then /^I should see the previously stored result$/ do
  assert_equal @result, @calc.current_display
end

# When /^I use the special constant __$/ do |special_constant_name|
#   @calc.push special_constant_name
# end

Then /^the current value on the screen should be (.*)$/ do |output|
  assert_equal output.to_f, @val
end

When(/^I use the special constant (.*)$/) do |special_constant_name|
 @val = @calc.push special_constant_name
end

And(/^I have cleared the screen$/) do
  @calc.clear
end

Given(/^I have entered (\d+) into the _$/) do |num|
  @calc.push num.to_i
end

And(/^I __ entered (\d+) into the calculator$/) do |num|
  @calc.push num.to_i
end

And(/^I have entered (\d+) __ the calculator$/) do |num|
  @calc.push num.to_i
end

Then(/^the result should be (.*) __$/) do |output|
  assert_equal output.to_f, @result
end