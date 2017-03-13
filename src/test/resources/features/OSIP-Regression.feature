Feature: OSIP Regression cases

  @TC44383
  Scenario: OSIP-360 View Location - Individual Address_Verify Related Tab - Contacts Add Contact Button
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    And I clicked on "Search" tab
    And I Search for the "TC44383-Location" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Contacts" tab
    Then I validate Add contact button in contacts tab

  @TC39187
  Scenario: OSIP-Verify the functionality of Create Button for create form -Subscriber
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Subscriber"
    And I click on the Launch Create form button
    Then I fill the mandatory fields with "TC39187-Subscriber" data

  @TC39192
  Scenario: Verify the functionality of Create Button for logical port
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Logical Port"
    And I Select Port Type as "Ethernet Bearer"
    And I click on the Launch Create form button
    Then I fill the mandatory fields with "TC39192-Logical" data

  @TC39186
  Scenario: Verify QoS Template EDIT button functionality
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "QOS Template" data from Search Tab
    #And I searched for "QOS Template"
    And I click on search button for "Inventory"
    #And I clicked on search button for "Inventory"
    And I click on view icon of Search Result page
    And I should validate QOS template table
    And I click on "Edit"
    And I Update values of "QOS Template table"
    And I click on "Save"
    Then I should validate "Success" message

  # Divya Test case
  @TC39186-1
  Scenario: Verify QoS Template EDIT button functionality-Negative Scenario
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "QOS Template" data from Search Tab
    #And I searched for "QOS Template"
    And I click on search button for "Inventory"
    #And I clicked on search button for "Inventory"
    And I click on view icon of Search Result page
    And I should validate QOS template table
    And I click on "Edit"
    And I Update values of "Invalid-QOS Template table"
    And I click on "Save"
    Then I should validate "Error" message

  ###  AUTHOR:           Shivaprasad
  @Regression
  Scenario: Validate activation tab
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Search" tab
    And I Search for the "Search Service" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Activations" tab
    #And I verified view page and clicked on "Activations" tab
    And I clicked on expand icon of Related tab "Activations" page
    Then Validate the Activations tab with Activation data

  @Regression
  Scenario: Validate fields in Create Device Screen for GPON Splitter
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I entered details for the "GENERIC OPTICAL SPLITTER"
    And I Select "1:8 splitter" for the drop down Device Sub Type
    And I click on Launch Create Form for "DeviceCreate"
    Then Validate fields in create device page for splitter

  @Regression
  Scenario: Validate Apache SOLR feature for Subscriber Name field in DSL OVC Service create screen
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I entered details for the "Create service"
    And I Select "DSL OVC" for the drop down Service Type
    And I click on Launch Create Form for "ServiveCreate"
    Then Validate apacheSolr for subscriber in create device service page

  ######################################################################################################################################
  ##																								Pratim Team scripts																														######
  ##																																																															######
  ##																																																															######
  ##																																																															######
  ######################################################################################################################################
  ## Author: Dolly
  @TC39203 @regprathim
  Scenario: Related Systems Devices_Verify Start and End Device tabs are displayed for an IPTV service
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "BAM logs for IPTV Service" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Devices" tab
    Then I should see the start and end devices

  @TC39207 @regprathim
  Scenario: List View(QoS Template)_Verify QoS Template list view is displayed when search is performed
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "QOS Template" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    Then I should be in the "QOS Template" list view page

  @TC55531
  Scenario: Verify the create functionality of GPON device type OLT
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "OLT" with Device Type as "Calix E7" with Sub-Type as "Calix E7-2"
    And I fill the mandatory fields with "TC55531" data
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page

  @TC55534
  Scenario: Verify the create functionality of GPON device type MDU
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "MDU" with Device Type as "Calix MDU" with Sub-Type as "Calix 761 MDU"
    And I fill the mandatory fields with "TC55534" data
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55534_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page

  @TC55536 @regprathim @regtesthar
  Scenario: Verify the create functionality of GPON device type FDH
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "FDH" with Device Type as "OFS FDH" with Sub-Type as "OFS 160 FDC"
    And I fill the mandatory fields with "TC55536" data
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page

  @TC55537 @regprathim
  Scenario: Verify the create functionality of GPON device type ONT
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "ONT" with Device Type as "Calix 700GE Series ONT" with Sub-Type as "Calix 711GE"
    And I fill the mandatory fields with "TC55537" data
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the "Save" button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page

  @TC55701 @regprathim
  Scenario: Verify the create functionality of Transport Path
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Network Build" type and select "Transport Path"
    And I Select Device Role as "NID" with Device Name as "OREMUTTC00W-01CUST.01"
    And I validate "OREMUTTC00W-01CUST.01" device name along with the start device name
    And I select "101/GE1/OREMUTMA05W/OREMUTTC00W" as circuit between start and end device in Transport Path page
    And I validate "101/GE1/OREMUTMA05W/OREMUTTC00W" device name along with the end device name
    Then I validate the submit button as enabled and click on it

  @TC54960 @regprathim
  Scenario: Verify Create Topology functionality for PON Collector
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Topology"
    And I verified "Inventory" from the Create Type dropdown
    And I verified "Topology" from the Inventory Type dropdown
    And I Select Topology Type as "PON Collector" with State as "CO - Colorado"
    And I fill the necessary fields with "TopologyData" data in Create Topology Page
    And I click on "AddDevice" button
    And I verified attributes in Place Devices in Topology Page
    And I search Device Type as "Calix C Series" with Device SubType as "Calix C7"
    Then I validate "TopologyData" data in the Topology Detail Page

  #This TC having issue and incomplete,issue is while creating DSL OVC service Task is not created
  @TC55325 @regprathim
  Scenario: DSL OVC Service Verify the Create button functionality of DSL OVC service with AutoActivation checkbox selected
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Service"
    And I verified "Inventory" from the Create Type dropdown
    And I verified "Service" from the Inventory Type dropdown
    And I Select "DSL OVC" for the drop down Service Type
    And I click on Launch Create Form for "ServiveCreate"

  #    And I fill the necessary fields with "DSL OVC Service Data" data in Create Service Page
  @TC39198 @regprathim
  Scenario: Verify the appropriate validation message if Contact Information is selected but not 24X7
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Contact"
    And I click on the Launch Create form button
    #    And I fill all the manadtory field at ov contact search deatails page
    And I click on Create button
    Then I verified the alert message

  @TC39194 @regprathim
  Scenario: Verify the functionality of Create Button for Create service area
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Service Area"
    And I click on the Launch Create form button
    And I fill the mandatory fields with "TC39194" data to create service
    Then I validate "TC39194" data in the Service Area Detail Page

  @TC39187A @regprathim
  Scenario: Verify the functionality of Create Button for Create form Subscriber
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Subscriber"
    And I click on the Launch Create form button
    And I fill the mandatory fields with "TC39187-Subscriber" data
    Then I validate "TC39187-Subscriber" data in the Subscriber Detail Page

  @TC39257 @regprathim
  Scenario: Verify the functionality of Submit Button of Edit for Transport Path
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39257" data from Search Tab
    And I click on search button for "Network"
    And I click on hyperlink link for corresponding Transport Path
    And I click the Edit button of the Route
    And I Update the NMI circuit value with "TC39257-NewCircut"
    Then I validate the route details with "TC39257" data

  @TC39191 @regprathim
  Scenario: Verify the create button functionality_Create Number PW ID
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Number"
    And I verified "Inventory" is displayed in the "Create Type" dropdown for create functionality
    And I verified "Number" is displayed in the "Inventory Type" dropdown for create functionality
    And I select "Ethernet" as Technology type
    And Select number type as "PW-ID"
    And I verified "PW-ID" is displayed in the "Number Type" dropdown for create functionality
    And I click on the Launch Create form button
    And I fill name field as "OVActivationPage" and "TC39191-a"
    And I fill all mandatory fields with "TC39191-b" and fill device Name as "TC39191-DeviceName" and object as "TC39191-Object"
    And I click on Create button

  @TC39259 @regprathim
  Scenario: Verify whether it is displaying the details from Manager Hierarchy to VP Level
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I hover "Manage Users" under "Administration" menu
    And I fill Manage Users details with "OV_USER_ID" and "AB76377" data
    And I click search User button
   # And I click on view icon of Search Result page
    And I click on view icon of Search Result page on Manage Users page
    And I click on Manage Hierarchy tab under User Search result in Manage Users Page
    Then I validate the details from Manager Hierarchy to VP Level

  @TC39209 @regprathim
  Scenario: Verify whether it is displaying the details from Manager Hierarchy to VP Level
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39209" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Devices" tab
    Then I should see the start and end devices in Port Section

  ##########################################################################################################################
  #Author : Mohit
  @TC39221 @regprathim
  Scenario: Verify Add Subscribers button
    Given I am in omnivue url
    When I log in as a "Admin" user
    #new
    #And I verified "Search" dropdown tab is present
    And I clicked on "Search" tab
    And I Search for the "TC39221" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Subscribers" tab
    And I click on "Add Subscribers"
    Then I verify subscriber lookup page

  @TC39263 @regprathim
  Scenario: Verify BAM Reports for the 360 view_Orders
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39263" data from Search Tab
    And I click on search button for "Orders"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "BAM Report" tab
    Then I should see BAM event logs displayed.

  @TC55484 @regprathim
  Scenario: Verify the create functionality of GPON device type MDU
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "DSLAM" with Device Type as "Calix E7" with Sub-Type as "Calix E7-2"
    And I fill the madatory fields for subscriber with "TC55484-SubscriberDevices" data
    And I fill the mandatory fields with "TC55484-CreateDevices" data
    And I click on Create button
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55484-CD" data
    And I clicked the "Save" button in Device Detail Page
    And I verified all fields in device details page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "TC55484-ND" data
    And I clicked the "Save" button in Networking Details Tab
    Then I verified all fields in networking details page

  #Needs some rework to merge with others
  @TC39242 @regprathim
  Scenario: Verify the create functionality of GPON device type MDU
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "ONT" with Device Type as "Adtran Total Access 300 Series ONT" with Sub-Type as "Adtran TA324 G1"
    And I click on wirecenterCLLI search button
    Then I verified all fields of wire center CLLI lookup

  @TC55535 @regprathim
  Scenario: Verify the create functionality of GPON device type MST
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "MST" with Device Type as "Corning MST" with Sub-Type as "Corning 12-port MST"
    And I fill the mandatory fields with "TC55535-CreateDevices" data
    And I click on Create button
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55484-CD" data
    And I clicked the "Save" button in Device Detail Page
    And I verified all fields in device details page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "TC55484-ND" data
    And I clicked the "Save" button in Networking Details Tab
    Then I verified all fields in networking details page

  @TC55671 @regprathim
  Scenario: Verify data displayed in the related tabs for GPON devices
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55671-Search" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Tasks" tab
    Then I verified "Tasks" Details page
    And In the 360 view I click on the "Locations" tab
    Then I verified "Locations" Details page
    And In the 360 view I click on the "Circuits" tab
    Then I verified "Circuits" Details page

  @TC55673 @regprathim
  Scenario: Verify data displayed in the related tabs for GPON devices
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55673-Search" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Locations" tab
    Then I verified "Locations" Details page
    And In the 360 view I click on the "Circuits" tab
    Then I verified "Circuits" Details page
    And In the 360 view I click on the "Devices" tab
    Then I verified "Devices" Details page

  @TC54963
  Scenario: Verify Edit functionality for PON Collector Topology
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC54963-Search" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I clicked the "Edit" button in "Topology" Detail Page
    And I edit the enabled fields with "TC55963-TD" data
    And I clicked the "Save" button in "Topology" Detail Page
    Then I verified all fields in topology details page

  @TC54965
  Scenario: Verify correct Data displayed in Related tab for PON Collector Topology
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC54965-Search" data from Search Tab
    And I verified "Inventory" from the Search type dropdown
    And I verified "Topology" from the Inventory type dropdown
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Devices" tab
    Then I verified correct Data displayed in Devices tab

  @TC39261
  Scenario: Verify Alt Eqpt Build order number search is retrieving all the details or not
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Network Build" type and select "Alternate Equipment Build"
    And I entered details for the "TC39261-Alt. Equipment Build Type"
    And I click on Launch Create Form for "NetworkCreate"
    And I enter the order number with "TC39261" data and click

  @TC39262
  Scenario: Verify the functionality of Add Device button of Alt Equipment Build
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Network Build" type and select "Alternate Equipment Build"
    And I entered details for the "TC39262-Alt. Equipment Build Type"
    And I click on Launch Create Form for "NetworkCreate"
    And I click on "Device-1 CLLI" button under build components
    And I fill the mandatory fields for "TC39262-Device1FORCLLI" and "TC39262-Device1" and "TC39262-Device1FORSubscriber"
    And I click on validate device button
    And I click on "Device-2 CLLI" button under build components
    And I fill the mandatory fields for "TC39262-Device2FORCLLI" and "TC39262-Device2" and "TC39262-Device2FORSubscriber"
    And I click on validate device button

  @TC39215
  Scenario: Edit Circuit_Transport Path_Verify the functionality of Save button when user makes changes.
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39215" data from Search Tab
    And I click on search button for "Network"
    And I click on hyperlink link for corresponding Transport Path
    And I click edit button and verify all the fields are displayed in the edit section
    And I Update the NMI circuit value with "TC39215-NewCircut"
    Then I validate the route details with "TC39215" data

  @TC90359
  Scenario: Validate - user is able to associate service to contact through Service option
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC90359" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Services" tab
    And I validate and add a service as "102/GE10/TEMPAZCC/TEMPAZCC06W"

  @TC55681
  Scenario: Verify Edit functionality of TOPOLOGY VIRTUAL CIRCUIT
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Circuit"
    And I select "Topology Virtual Circuit" from circuit type
    And I click on the Launch Create form button
    And I fill all mandatory fields with "TC55681" and fill start and end device with "TC55681-startDevice" and "TC55681-endDevice"
    And I click on Create button
    And I take the value of circuit Name
    And I clicked on "Search" tab
    And I Search for the "TC55681-search" data from Search Tab
    And I fill the name field
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I clicked the "Edit" button for Topology Virtual Circuit
    And I edit all enabeld fields for circuit details as"TC55681-edit"
    And I click on "Save"
    # And I clicked the "Save" button in "Circuit" Detail Page
    And I verify and delete the circuit details
    Then I accept the alert button

  @TC39235
  Scenario: Verify the functionality of Create Button for create form - service type- ENNI Link
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Service"
    And I Select "ENNI Link" for the drop down Service Type
    And I click on the Launch Create form button
    And I fill the all mandatory fields for ENNI Link with "TC39235" "TC39235-subscriber" "TC39235-device" data
    And I click on Create button

  @TC39236
  Scenario: : Verify the functionality of Create Button for the Circuit type - Topology Virtual Circuit
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Circuit"
    And I select "Topology Virtual Circuit" from circuit type
    And I click on the Launch Create form button
    And I fill all mandatory fields with "TC39236" and fill start and end device with "TC39236-startDevice" and "TC39236-endDevice"
    And I click on Create button

  @TC39229
  Scenario: Verify all the fields and look up for adding new addresses
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39229" data from Search Tab
    And I click on search button for "SLC"
    Then I verify all fields for SLC

  @TC39216
  Scenario: Focus Tab - Order Details_Verify the Order Note History  section is displays the information when user saves a note
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39216" data from Search Tab
    And I click on search button for "Orders"
    And I click on view icon of Search Result page
    And I verify order detail tab is not editable
    Then I verify Order Note History section displays the same data that user enter in oder notes page

  @TC39227
  Scenario: Verify Delete functionality of FIBER link
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39227" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    Then I verify delete button and click

  @TC55687
  Scenario: Verify Edit functionality of HSI services
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55687" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I clicked the "Edit" button in HSI Detail Page
    And I fill all mandatory fields with "TC55687-Edit"
    And I clicked the "Save" button in HSI Detail Page
    And I click on close tab buttons of all open HSI tab
    And I clicked on "Search" tab
    And I Search for the "TC55687" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verify values for HSI

  #####################################################################################################################################
  #Author : Ankit
  @TC39243
  Scenario: Verify Service Association section for the service typeMEFENNI
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Service"
    And I Search for the "TC39243" data from Search Tab
    And I click on the Launch Create form button
    #new
    Then I verify all The Fields depending on selected value from SPEC Code dropdown

  @TC39225
  Scenario: Verify the Add Subscriber association button
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39225" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Subscribers" tab
    #NEW
    And I verify Add subscriber Association button

  @TC39223
  Scenario: Verify the Add Subscriber association button
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39223" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I clicked the "Edit" button in "Link" Detail Page
    #new
    Then I fill the field from "Tc39223searchlink"
    And I clicked the "Save" button in "Link" Detail Page
    #new
    Then I validate the field which we had selected

  @TC55672
  Scenario: Verify data displayed in the related tabs of generic topology
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55672" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    Then I verified "Devices" Details page
    And In the 360 view I click on the "Locations" tab
    Then I verified "Locations" Details page
    And In the 360 view I click on the "Circuits" tab
    Then I verified "Circuits" Details page

  @TC55318
  Scenario: Verify the Edit functionality of DSL OVC Service
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55318" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I clicked the "Edit" button in "DSL OVC" Detail Page
    #NEW
    And I fill data from "OVServiceDetailsPage" and "TC55318-main"
    #NEW
    Then I validate the updated service details

  @TC55509
  Scenario: Verify the create functionality of GPON device type MDU
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "NPE" with Device Type as "Alcatel-Lucent 7750 Service Router" with Sub-Type as "Alcatel-Lucent 7750 SR-12"
    And I fill the madatory fields for subscriber with "TC55484-SubscriberDevices" data
    And I fill the mandatory fields with "TC55509-CreateDevices" data
    And I click on Create button
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55484-CD" data
    And I clicked the "Save" button in Device Detail Page
    And I verified all fields in device details page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "TC55484-ND" data
    And I clicked the "Save" button in Networking Details Tab
    Then I verified all fields in networking details page

  @TC55726
  Scenario Outline: verify Quick search fields functionality of Subscriber
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the <TestData1> data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    Then I verify the suscriber view

    Examples: 
      | TestData1 |
      | TC55726   |
      | TC55726A  |
      | TC55726B  |
      | TC55726C  |

  @TC39199
  Scenario: Verify Audit Log of Create for Contact
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Contact"
    And I click on the Launch Create form button
    And I fill all the manadtory field from "OVContactSearchDetailsPage" and "TC39199"
    And I select all the checkbox
    And I click on Create button
    And I click on AuditLog tab

# Sanjay has done the script for this
  @TC55512
  Scenario: Verify the create functionality of Ethernet device type BRIX
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "BRIX" with Device Type as "Brix Verifier" with Sub-Type as "BV-110 Verifier DC"
    And I fill the madatory fields for subscriber with "TC55512-SubscriberDevices" data
    And I fill the mandatory fields with "TC55512-CreateDevices" data

  @TC55684
  Scenario: Verify Edit and Delete functionality of LAG CIRCUIT
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55684" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I click on "Edit"
    And I fill all the editable field with "TC55684EDIT"
    And I click on "Save"
    Then I verify all fileld of "TC55684verify"
    And I click on "Delete"

  @TC55685
  Scenario: Verify Edit and Delete functionality of VLAN Segment CIRCUITS
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55685" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I click on "Edit"
    And I fill all the editable field with "TC55685EDIT"
    And I click on "Save"
    Then I verify all fileld of "TC55685verify"
    And I click on "Delete"

  @TC118966
  Scenario: Verify the create, edit and delete functionality of SVLAN Number
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Contact"
    And I click on the Launch Create form button
    And I fill all the manadtory field from "OVContactSearchDetailsPage" and "TC118966"
    And I select all the checkbox
    And I click on Create button

  @TC55692
  Scenario: Verify the create, edit and delete functionality of SVLAN Number
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Number"
    And I select "Ethernet" as Technology type
    And Select number type as "S-VLAN"
    And I click on the Launch Create form button
    And I fill all the manadtory field from "OVContactSearchDetailsPage" and "TC55692"
    And I enter the circuit name
    And I click on Create button
    And I click on "Edit"
    And I click on "Save"
    And I click on "Delete"
    Then I accept the alert button

  @TC55688
  Scenario: Verify Edit functionality of HOST Service
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55688" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I click on "Edit"
    And I fill all the manadtory field from "OVServiceResultPage" and "TC55688"
    And I click on "Save"
    And I click on "Edit"
    And I verify all the manadtory field from "OVServiceResultPage" and "TC55688"

  @TC55689
  Scenario: Verify Edit functionality of Service Area
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55689" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I click on Edit button
    And I click on Add more address button
    And I fill all the manadtory field from "OVContactSearchDetailsPage" and "cTC55689POPUp"
    And I select all the required data
    # And I click on "Save"
    And I click on service area search result
    And I click on view icon of Search Result page
    Then I verify the update value

  @TC55696
  Scenario: verify the create functionality of LAG logical port
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Logical Port"
    And I Select Port Type as "LAG Port"
    And I click on the Launch Create form button
    And I enter all the manadtory data into field
    And I click on Create button

  @TC39239
  Scenario: verify thr functionality of create button for the circuit type-vlan segment
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Circuit"
    And I select "VLAN Segment" from circuit type
    And I click on the Launch Create form button
    And I fill all the manadtory field from "OVCircuitDetailsPage" and "TC39239"
    And I enter the circuit deatils
    And I fill all the manadtory field from "OVCircuitDetailsPage" and "TC39239A"
    And I click on circuit link
    And I click on Create button

  @TC39190
  Scenario: create individual address within a rangeusng add individual address button
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Link"
    And I verify "Inventory" type and select "Link"
    And I select "BackPlane Link" from Link type
    And I verify "BackPlane Link" from Link type
    And I click on the Launch Create form button
    And I fill all mandatory fields with "TC39190" and fill start and end device with "TC39190-startDevice" and "TC39190-endDevice" for Link
    And I click on Create button

  @TC39188
  Scenario: verify the functionality of create button_create link
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Location"
    And I verify "Inventory" type and select "Location"
    And I select "Address Range" from Location type
    And I verify "Address Range" from Location type
    And I click on the Launch Create form button
    And I verify the launch create functionality
    And I verify all the field on ovloaction page
    And I fill all the manadtory field from "OVLocationDetailsPage" and "TC39188"
    And I enter unique data from "OVActivationPage" and "TC39188A"
    And I click on Create button
    And I verify Add individual address button
    And I verify mandatory field from "OVActivationPage"
    
    	@TC55705 
		Scenario: verify the search functionality of Transport path 
			Given I am in omnivue url 
			When I log in as a "Admin" user 
			And I clicked on "Search" tab 
			And I Search for the "TC55705" data from Search Tab 
			And I click on search button for "Network" 
			And I click on transport path 
			And I click on circuit 
			
			@TC55693 
		Scenario: Verify the create functionality of OLT Ring Topology 
			Given I am in omnivue url 
			When I log in as a "Admin" user 
			And I clicked on "Create" tab 
			And I go to "Inventory" type and select "Topology" 
			And I Select Topology Type as "OLT Ring" with State as "CA - California" 
			And I clicked on "Search" tab 
			And I Search for the "TC55693" data from Search Tab 
			And I click on search button for "Inventory" 
			And I click on view icon of Search Result page 
			And I get the Device name 
			And I click on topology tab 
			And I fill all the manadtory field from "OVCreateTopologyPage" and "TC55693" 
			And I click on Add device button 
			And I Enter Device name 
			And I click on Searchdevice 
			And I click on Associate Device 
			And I click on Create button
