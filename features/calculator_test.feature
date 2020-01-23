Feature: Calculator functions
  Everybody want to test this Calculator

  Scenario: Numbers addition
    Given I enter first number = '2'
    And I enter second number = '2'
    When I enter "+" sign
    Then I should see '4'

  Scenario: Numbers multiplication
    Given I enter first number = '5'
    And I enter second number = '5'
    When I enter "*" sign
    Then I should see '25'

  Scenario: Operation with mistake
    Given I enter first number
    And I enter second number
    When I enter '?' sign
    Then I should see 'syntax error'
