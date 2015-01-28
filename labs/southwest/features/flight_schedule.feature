Feature: Flight Schedules

  # Step defs in plain english as read from bottom up (And I get the daily flight schedule .... next day)
  # When I go to southwest.com and goto Flight Schedules page.
  #When I search for flight schedule two cities,
  #I get schedule for next day, previous day and today between two cities

  Scenario: Looking up the daily schedule
    When I look up the daily flight schedule between two cities
    Then I get the daily flight schedule between those cities for that day
    And I get the daily flight schedule between those cities for the previous day
    And I get the daily flight schedule between those cities for the next day
  
  Scenario: Looking up the weekly schedule
    When I look up the weekly flight schedule between two cities
    Then I get the weekly flight schedule between those cities
    And I can get the weekly flight schedule between those cities for at least the next 6 weeks
