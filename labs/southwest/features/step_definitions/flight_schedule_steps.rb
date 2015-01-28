
When(/^I look up the daily flight schedule between two cities$/) do

  open_the_website
  go_to_flight_schedule_page
  search_for_flight_betn_two_cities


  #@browser.goto 'www.southwest.com'
  #@browser.link(:class => 'swa-footer--item', :text => 'Flight Schedules').click
  #@browser.text_field(:id => 'originAirport_displayed').set 'Columbus'
  #@browser.text_field(:id => 'destinationAirport_displayed').set 'Chicago'
  #@browser.text_field(:id => 'outboundDate').set '01/31/2015'
  #@browser.radio(:id => 'daily').set
  #@browser.button(:id => 'flightSchedulesForm_submitButton').click
  #@browser.text_field(:id => 'preferredTimeOfDay').set
end


Then(/^I get the daily flight schedule between those cities for that day$/) do

end