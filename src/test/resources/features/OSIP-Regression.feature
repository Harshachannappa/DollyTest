Feature: OSIP Regression cases

  @TC44383
  Scenario: OSIP-360 View Location - Individual Address_Verify Related Tab - Contacts Add Contact Button
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    Then I clicked on "Search" tab
    And I Search for the "TC44383-Location" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    When I verified view page and clicked on "Contacts" tab
    Then I validate Add contact button in contacts tab

  #And Log out from OMNIVue
  @TC39187
  Scenario: OSIP-Verify the functionality of Create Button for create form -Subscriber
    Given I am in omnivue url
    When I log in as a "Admin" user
    Then I clicked on "Create" tab
    And I go to "Inventory" type and select "Subscriber"
    And I click on the Launch Create form button
    And I fill the mandatory fields with "TC39187-Subscriber" data

  #And Log out from OMNIVue
  @TC39192
  Scenario: Verify the functionality of Create Button for logical port
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Logical Port"
    And I Select Port Type as "Ethernet Bearer"
    And I click on the Launch Create form button
    And I fill the mandatory fields with "TC39192-Logical" data

  #---------------------------------------------Done By Dolly-------------------------------------------------------------------------
  @TC39203
  Scenario: Related Systems Devices_Verify Start and End Device tabs are displayed for an IPTV service
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "BAM logs for IPTV Service" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Devices" tab
    #Newly added immediate below one step , add the click tab
    Then I should see the start and end devices

  #And Log out from OMNIVue
  @TC39207
  Scenario: List View(QoS Template)_Verify QoS Template list view is displayed when search is performed
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "QOS Template" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    #Newly added immediate below one step
    Then I should be in the "QOS Template" list view page

  #And Log out from OMNIVue
  @TC55531
  Scenario: Verify the create functionality of GPON device type OLT
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "OLT" with Device Type as "Calix E7" with Sub-Type as "Calix E7-2"
    And I fill the mandatory fields with "TC55531" data
    #Newly added immediate below 8 step
    And I clicked the Edit button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the Edit Device Details button in Networking Details Page
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page

  #And Log out from OMNIVue
  @TC55534
  Scenario: Verify the create functionality of GPON device type MDU
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "MDU" with Device Type as "Calix MDU" with Sub-Type as "Calix 761 MDU"
    And I fill the mandatory fields with "TC55534" data
    #Newly added immediate below 8 step
    And I clicked the Edit button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the Edit Device Details button in Networking Details Page
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page

  #And Log out from OMNIVue
  @TC55536
  Scenario: Verify the create functionality of GPON device type FDH
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "FDH" with Device Type as "OFS FDH" with Sub-Type as "OFS 160 FDC"
    And I fill the mandatory fields with "TC55536" data
    And I clicked the Edit button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the Edit Device Details button in Networking Details Page
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page

  #And Log out from OMNIVue
  @TC55537
  Scenario: Verify the create functionality of GPON device type ONT
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "ONT" with Device Type as "Calix 700GE Series ONT" with Sub-Type as "Calix 711GE"
    And I fill the mandatory fields with "TC55537" data
    And I clicked the Edit button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the Edit Device Details button in Networking Details Page
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page
    #And Log out from OMNIVue
