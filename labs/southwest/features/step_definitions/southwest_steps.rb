When(/^I look up the daily flight schedule between two cities$/) do
  goto_web_site

  on(FlightSchedulePage) do |page|
 page.flight_schedule
 page.enter_departure_airport 'EWR'
 page.enter_arrival_airport 'LAX'
 page.close_calender
 page.search_button

end
on(ScheduleResultsPage) do |page|
  @data=page.gather_schedule
end



end



And(/^I get the daily flight schedule between those cities for the next day$/) do

  # get next day flight_schedule
end

And(/^I get the daily flight schedule between those cities for the previous day$/) do

  # get previous day flight_schedule
end

Then(/^I get the daily flight schedule between those cities for that day$/) do
@data

end