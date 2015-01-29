Feature: Bank account overdraft

  Background: I have login into the bank web site

  Scenario: view over draft amount
    Given: I have a checking account
    When I want my overdraft amount
    Then the overdraft amount is '$1000'

  Scenario: user has the ability to turn on the overdraft
    When I turn on my overdraft
    Then a notification pops up
    And a email is sent to my inbox

  Scenario: making a check that is over the balance limit with overdraft on
    Given I turn on my overdraft protection
    When I making a check over my checking balance was process
    Then my overdraft reduce by the amount over my balance
    And my check was processed


  Scenario: user has the ability to turn off the overdraft
    When I want to turn off my overdraft
    Then a notification pops up
    And a email is send to my inbox


  Scenario: making a check that is over the balance limit with overdraft off
    Given my overdraft is turn off
    When I making a check over my checking balance was process
    Then my check account is zored out
    And my check bounced


  Scenario Outline: overdraft associate to a account
    When I want to associate overdraft to <accounts>
    Then overdraft is associate to <accounts>

    Examples:
    |accounts|
    |checking|
    |saving#1|
    |saving#2|

