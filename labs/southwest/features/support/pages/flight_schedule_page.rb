class FlightSchedulePage

  include PageObject
  link(:flight_schedule,:class=>'swa-footer--item',:text=>'Flight Schedules')
  text_field(:departure_airport,:class=>'stationInput  ac_input',:index=>0)
  text_field(:arrival_airport,:class=>'stationInput  ac_input',:index=>1)
  div(:calender,:id=>'ui-datepicker-div')
  divs(:airport_results,:class=>'ac_results')


  def enter_departure_airport depart
  self.departure_airport = depart
  select_airport 0
  end
  def enter_arrival_airport arrival
  self.arrival_airport = arrival
  select_airport 1
  end

  def select_airport index
    wait_until{airport_results_elements[index].list_item_elements[0].visible?}
    self.airport_results_elements[index].list_item_elements[1].click

  end

  def close_calender
    wait_until{self.calender_element.visible?}
    self.calender_element.span_element(:class=>'close_link').click
  end


end


