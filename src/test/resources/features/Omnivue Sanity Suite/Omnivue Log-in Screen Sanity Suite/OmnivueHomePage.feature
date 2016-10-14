Feature: Sanity check on each build
  
  
  @Sanity1
  Scenario: OV- Validating login page of Omnivue
    Given I am in omnivue url
    When I am in the Omnivue Welcome page
    And I need to check User login box
    And I need to evaluate all the systems are up & running
    Then I log in as a "Admin" user