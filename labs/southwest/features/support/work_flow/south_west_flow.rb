

module SouthWestFlow

def goto_web_site
  visit_page HomePage
end

def request_for_schedule
    on(FlightSchedulePage) do |page|
      page.flight_schedule
      page.enter_departure_airport 'EWR'
      page.enter_arrival_airport 'LAX'
      page.close_calender
      page.search_button
      end
end


def seeing_the_daily_schedule
  on(ScheduleResultsPage) do |page|
    page.gather_schedule
  end
end




end
World SouthWestFlow