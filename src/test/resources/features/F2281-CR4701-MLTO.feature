Feature: CR4701 GPON Market Launch Test Orders (MLTO) JulyUS65043

#US65043--CR4701 GPON MLTO uses DSP provisioning flow for MLTO and HSI (HSI+PRISM)

@US65043 @TC83402 
  Scenario: OV-Validate GPON MLTO uses DSP provisioning flow for HSI Service Type
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I select "Orders" in Create Tab    
     #And I click on the Launch Create form button
   And I validate attributes in create form for "MLTO" 
    #And I fill the mandatory fields with "US65043-TC83402" data  
    
    #[Order #*, Customer First Name*, Customer Last Name*, BAN, Customer type*, 
    # Customer Subtype*, Account Type*, Service Address*, Address Line 2, Wire Center CLLI*, 
    # Latitude*, Longitude*, Remarks, DTN*, Reason Code*, Service Type*, Down Speed*, Up Speed*, Action*, 
    # Test Order*, Feature Code Collection, Feature Code Remark, Appointment Start Date*, Appointment Start Time*, 
    # Appointment End Date*, Appointment End Time*, Requested Due Date*, Remark]