require 'page-object'
# do I need pagefactory?

class Southwest
  include PageObject

  page_url "www.southwest.com"

  #@browser.link(:class => 'swa-footer--item', :text => 'Flight Schedules').click

  link(:flightScheduleLink, :class => 'swa-footer--item', :text => 'Flight Schedules')

end