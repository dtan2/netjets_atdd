require 'page-object'

class FlightSchedule
  include PageObject

  #@browser.text_field(:id => 'originAirport_displayed').set 'Columbus'
  #@browser.text_field(:id => 'destinationAirport_displayed').set 'Chicago'
  #@browser.text_field(:id => 'outboundDate').set '01/31/2015'
  #@browser.radio(:id => 'daily').set
  #@browser.button(:id => 'flightSchedulesForm_submitButton').click

  text_field(:originAirport, :id => 'originAirport_displayed')
  text_field(:destAirport, :id => 'destinationAirport_displayed')
  text_field(:outBoundDate, :id => 'outboundDate')
  #radio(:daily, :id => 'daily')
  button(:searchSchedule, :id => 'flightSchedulesForm_submitButton')

end