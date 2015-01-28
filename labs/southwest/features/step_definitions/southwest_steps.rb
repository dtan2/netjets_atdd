When(/^I look up the daily flight schedule between two cities$/) do
  visit_page HomePage

  on(FlightSchedulePage) do |page|
 page.flight_schedule
 page.enter_departure_airport 'EWR'
 page.enter_arrival_airport 'LAX'
 page.close_calender
end

# entering arrival_airport
# select today_date
# search
end



And(/^I get the daily flight schedule between those cities for the next day$/) do

  # get next day flight_schedule
end

And(/^I get the daily flight schedule between those cities for the previous day$/) do

  # get previous day flight_schedule
end

Then(/^I get the daily flight schedule between those cities for that day$/) do

  # get daily flight_schedule
end