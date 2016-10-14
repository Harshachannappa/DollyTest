Feature: Omnivue Sanity Check Topology




 @Sanity1
  Scenario: Verify Create Topology functionality for PON Network
   Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Create" tab
    And I go to "Inventory" type and select "Topology" 
    And I Select Topology Type as "PON Network" with State as "CO - Colorado"    
    And I click on "AddCircuit" button    
    And I fill the necessary fields with "TopologyData with Circuit" data in Create Topology Page   
    Then I Click on "Create" in the Topology Detail Page
    
    
     @Sanity1
  Scenario: Verify Create Topology functionality for Generic Network
   Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Create" tab
    And I go to "Inventory" type and select "Topology" 
    And I Select Topology Type as "Generic Network" with State as "CO - Colorado"    
    And I click on "AddDevice" button 
    And I fill the necessary fields with "TopologyData with Device" data in Create Topology Page       
    Then I Click on "Create" in the Topology Detail Page
    
    
    