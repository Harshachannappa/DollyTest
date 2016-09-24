Feature: F2262-CR4701-US40860-CR4701-Enhance ICL Device_Compatbility table to accept Passive technology
  
  
  @US43123-TC24409 @reg2
  Scenario Outline: OV- Validating atributes of Create Device Screen on Passive Devices.
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "PASSIVE" technology and device type
     #--------------------------------Validate create form attribute
    And Select Device Type as <Device> with Sub-Type as <Subtype>
    #And I click on Create button
    #And Search for the  location "Without" Building CLLI
    Then Fill all the mandatory fields with <Data> data
    #And I click on Create button
    #And Device got successfully created-
    #And Log out from OMNIVue
    
     Examples: 
      | Device                           | Subtype               |Data							|
      | Fiber Distribution Hub           | Generic FDH 144       |US43123-TC24409-1	|
      | Fiber Distribution Panel         | Generic FDP 12:12     |US43123-TC24409-2	|
      | Fiber Multiport Service Terminal | Generic MST 24:24     |US43123-TC24409-3	|
      | Fiber Splitter                   | Generic Splitter 1:32 |US43123-TC24409-4	|
    #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
      
  @US43123-TC24975 @reg3
  Scenario Outline: OV-Validating Search Device Screen based on Passive technology type
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    And I clicked on "Search" tab
    And I searched for <Container>
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And Validate attributes in "PASSIVE" Search page
    Then Validate the device name in search page
    
    Examples: 
    |Container|
    |MST			|
    |FDP			|
    |Splitter	|
    
    
    #Test-1 Data-MST-BLCYNVTSGDB-MST-28---Need to be created
    #Test-1 Data-FDP-DSLOVC44001-010101.01A---Need to be created
    #Test-1 Data-Splitter-FOROURTEST-OFS-1
    
    #Test-3 Data-MST-BLCYNVXFOSP-MST-4
    #Test-3 Data-FDP-BLCYNVXFOSP-FDP72
    #Test-3 Data-Splitter-LSVGNVXH89W-OFS-1
    
     @US43123-TC25113 @reg3
  Scenario: OV- Validating atributes of Create Device Screen on Passive Devices.
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I Select "Role" as Filter By value
    And Select the Role as "MST" with Device Type as "Fiber Multiport Service Terminal" with Sub-Type as "Generic MST 2:2"
    And I validated "PASSIVE" radio button and "All" radio button
    #Fill the fields step needs to be added
    #And I click on Create button
    And I fill the mandatory fields with "US43123-TC25113" data    
    Then Validate attributes in "PASSIVE" device details page
    #And Device got successfully created-
    
     #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
    
 ##################################################################################################################
    
    #US40867-CR4701-Enhance Splitter Naming Convention
    
    #US51414-CR4701 GPON Location CLLI is optional for device technology=GPON or Passive
    
   @US51414-TC37684 @TC86322 @reg3
  	Scenario: OV-Validate Location CLLI is optional on Inventory Device Create for Passive Technology
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "PASSIVE" technology and device type
    And Select the technology as "PASSIVE" with Device Type as "Fiber Distribution Hub" with Sub-Type as "Generic FDH 144"
    And Validate "PASSIVE" radio button in device create page 
    #Then Validate Location CLLI is optional or not    
    #Then Validate Location CLLI for
    And Validate Location CLLI
    Then I fill the mandatory fields with "US51414-TC37684" data
    #Then Validate Location CLLI
    #And I click on Create button
    #And Device got successfully created-
    
     #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
    
@US51414-TC37479 @TC86321 @reg
   Scenario: OV-Validate Location CLLI is optional on Inventory Device Create for GPON Technology
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "GPON" technology and device type
    And Select the technology as "GPON" with Device Type as "ADTRAN Total Access 5000" with Sub-Type as "ADTRAN Total Access 5000 19 Inch Chassis"
    And Validate "GPON" radio button in device create page 
    #Then Validate Location CLLI is optional or not
    And Validate Location CLLI
    Then I fill the mandatory fields with "US51414-TC37479" data
    
    #And I click on Create button
    #And Device got successfully created-
    
     #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
    

@US51414-TC37705 @TC86323 @reg
    Scenario: OV-Validate Location CLLI attribute is mandatory on Inventory Device Create for Ethernet Technology
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    When I validated "ETHERNET" technology and device type
    Then Select the technology as "ETHERNET" with Device Type as "Calix C Series" with Sub-Type as "Calix C7"
    Then Validate "GPON" radio button in device create page 
    #Then Validate Location CLLI is optional or not
    Then Validate Location CLLI
    And Select subscriber & Equipment role with "US51414-TC37705" data
    And I fill the mandatory fields with "US51414-TC37705" data
    #And I click on Create button
    #And Device got successfully created-
    