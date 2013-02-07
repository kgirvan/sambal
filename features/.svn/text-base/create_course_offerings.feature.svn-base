@wip
Feature: Create Course Offerings
Background:
  Given I am logged in as a Schedule Coordinator

  #CO 5.1 & 5.2
  Scenario: Create Course Offerings with selected delivery formats
    When I designate a valid term and Catalog Course Code
    And I create a Course Offering with selected Delivery Formats
    Then the new Course Offering should contain only the selected delivery formats

  #CO 5.1 & 5.2
  Scenario: Create Course Offerings with lecture delivery formats
    When I designate a valid term and Catalog Course Code for lecture formats
    And I create a Course Offering with selected Delivery Formats
    Then the new Course Offering should contain only the selected delivery formats

  @pending
  Scenario: Copy existing Course Offering but exclude instructor information
    When I designate a valid term and Catalog Course Code for lecture formats
    And I copy a course offering from an existing offering to exclude instructor information
    Then the new Course Offering should be displayed in the list of available offerings.

