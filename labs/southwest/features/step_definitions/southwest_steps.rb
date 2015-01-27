When(/^I look up the daily flight schedule between two cities$/) do

@browser.goto 'https://www.southwest.com'
@browser.link(:class=>'swa-footer--item',:text=>'Flight Schedules').click
sleep 3
entering arrival_airport
select today_date
search
end



And(/^I get the daily flight schedule between those cities for the next day$/) do

  get next day flight_schedule
end

And(/^I get the daily flight schedule between those cities for the previous day$/) do

  get previous day flight_schedule
end

Then(/^I get the daily flight schedule between those cities for that day$/) do

  get daily flight_schedule
end