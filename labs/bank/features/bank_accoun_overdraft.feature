Feature: Bank account overdraft

  Background: I have login into the bank web site

  Scenario: view over draft amount
    Given: I have a checking account
    When I want my overdraft amount
    Then the overdraft amount is '$1000'

  Scenario: user has the ability to turn on the overdraft
    When I want to turn on my overdraft
    Then the overdraft is turn on

  Scenario: user has the ability to turn off the overdraft
    When I want to turn off my overdraft
    Then the overdraft is turn off

  Scenario Outline: overdraft associate to a account
    When I want to associate overdraft to <accounts>
    Then overdraft is associate to <accounts>

    Examples:
    |accounts|
    |checking|
    |saving#1|
    |saving#2|

