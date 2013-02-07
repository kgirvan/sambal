@draft
Feature: KRMS Edit Agenda

  Check to see if the correct content is loaded on the Edit Agenda page

  Background:
    Given I am logged in as admin

  Scenario: Count the number of options in the Agenda dropdown list
    When I go to the Edit Agenda page
    Then there should be 5 possible selections for the "Rule" list
    And the "view" section should not be visible
    And the "edit" section should not be visible

  Scenario: The rule section should appear after a rule is selected
    When I go to the Edit Agenda page
    And I select a random option from the dropdown list
    Then the "view" section should be visible
    And the "edit" section should be visible