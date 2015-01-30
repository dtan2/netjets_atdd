When(/^I look up the daily flight schedule between two cities$/) do
  goto_web_site
  request_for_schedule
end


And(/^I get the daily flight schedule between those cities for the next day$/) do

  # get next day flight_schedule
end

And(/^I get the daily flight schedule between those cities for the previous day$/) do

  # get previous day flight_schedule
end

Then(/^I get the daily flight schedule between those cities for that day$/) do
seeing_the_daily_schedule




end