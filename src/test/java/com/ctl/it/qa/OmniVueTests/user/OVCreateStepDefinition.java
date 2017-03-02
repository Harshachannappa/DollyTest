package com.ctl.it.qa.OmniVueTests.user;

import java.awt.AWTException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVAssociatedModServicesPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVAssociatedServicesPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateDevicePage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateServicePage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVDeviceLookupPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVHomepage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVLoginPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVModDeviceLookupPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVModServiceDetailsPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVSearchDevicePage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVServiceDetailsPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;
import com.ctl.it.qa.staf.xml.reader.IntDataContainer;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import net.serenitybdd.core.annotations.findby.By;
import net.thucydides.core.annotations.Steps;

public class OVCreateStepDefinition {
	OVLoginPage loginPage;
	OVHomepage ovhomepage;
	OVActivationPage actvtnpage;
	OVAssociatedServicesPage assocservicespage;
	OVDeviceLookupPage devicelookuppage;
	OVSearchDevicePage searchdevicepage;
	OVServiceDetailsPage servicedetailspage;
	OVModServiceDetailsPage modservicedetailspage;
	OVModDeviceLookupPage moddevicelookuppage;
	OVAssociatedModServicesPage modassocservicespage;
	OVCreateDevicePage devcreatepage;
	OVCreateServicePage ovg; 
	

	@Steps
	UserSteps enduser;		
	
	
	@And("^I fill the mandatory fields with \"([^\"]*)\" data$") //Fill the Device create form page details
	public void fillmandatoryfield(String testdata){
		enduser.fillmandatoryfield(testdata);		
	}
	

	
	@And("^Fill all the mandatory fields with ([^\"]*) data$")
	public void fillmandatoryfield_passive(String testdata){
		enduser.fillmandatoryfield(testdata);		
	}
	
	@And("^Select subscriber & Equipment role with \"([^\"]*)\" data$") //Select subscriber & equipment role in create form page
	public void select_subcriber_equipmentrole(String testdata) throws InterruptedException{
		enduser.subcriber_equipment(testdata);
	}
	
	@And("^I click on Create button$")  //Create Button Click on Create Form for Inventory, Subscriber
	public void i_click_create_button(){
		enduser.click_createbutton();
		}
	
	@And("^I verified the alert message$")  
	public void i_verified_the_alert_message(){
		enduser.verifiedAlertMessage();
		}

	
	@Then("^I validated \"([^\"]*)\" radio button and \"([^\"]*)\" radio button$")
	public void i_validated_radio_button_and_radio_button(String radioBtn1, String radioBtn2) throws Throwable {
		/*if( enduser.getDriver().findElement(By.xpath(".//*[@id='0']/ng-include/div/div[11]/div/div[2]/div/div[3]/input[3]")).isDisplayed() && enduser.getDriver().findElement(By.xpath("//*[@id='0']/ng-include/div/div[11]/div/div[2]/div/div[3]/input[4]")).isDisplayed()){
		System.out.println("Element is Visible");
		}else{
		System.out.println("Element is InVisible");
		}*/
		//devcreatepage.IsRadioButtonPresent();				//check why is it throughing error---17/8/2016
	}
		
	@Then("^Validate attributes in order details page$")
	public void validate_order_attributes() {
		enduser.order_attribute();
	}

	@Then("^Validate the device name in search page$")
	public void validate_the_device_name_in_search_page() throws Throwable {
	    enduser.searched_device_is(searchdevicepage.tbx_deviceName.getText());
	}	
	
	@And("^I click on the Launch Create form button$")  //Launching the subcribers create form
	public void i_click_launch_create_form(){
		enduser.click_createlaunchformbutton();
		
	}	
	
	@And("^I Update values of \"([^\"]*)\"$")
	public void i_update_value_of(String fields) throws InterruptedException, AWTException{
		enduser.fill_fields(fields);
		
	}	
	
	//New Updates---9/23/2016
	@And("^I clicked the \"([^\"]*)\" button in Device Detail Page$")
	public void edit_Button_DeviceDetailPage(String button) throws InterruptedException{
		enduser.edit_Button_DeviceDetailPage(button);
	}
	
	@And("^I edit the enabled fields with \"([^\"]*)\" data in Device Detail Tab$")
	public void fillenabledfield(String testdata){
		enduser.fillenabledfield(testdata);		
	}
	
	@And("^I clicked the save button in Networking Details Tab$") 
	public void saveNetworkingDetails() throws InterruptedException{
		enduser.saveNetworkingDetails();		
	}
	
	
	@And("^I clicked the \"([^\"]*)\" button in Networking Details Tab$")
	public void edit_Button_NetworkingDetailPage(String button) throws InterruptedException{
		enduser.edit_Button_NetworkingDetailPage(button);
	}
	
	@And("^I edit the enabled fields with \"([^\"]*)\" data in Networking Details Tab$") //Fill the Device create form page details
	public void networkDetailUpdatefield(String testdata) throws InterruptedException, AWTException{
		enduser.fill_fields(testdata);
	}
	
	@And("^I fill the madatory fields for subscriber with \"([^\"]*)\" data$")
	 public void fillSubscriberFields(String data) throws InterruptedException{
		 enduser.fillSubscriberFields(data);
	 }
	
	@And("^I edit the enabled fields with \"([^\"]*)\" data$")
	public void editEnableField(String testdata) throws InterruptedException, AWTException{
		enduser.fill_fields(testdata);
	}
	
	@And("^I click on wirecenterCLLI search button$")
	 public void clickwirecenterCLLISearchButton(){
		 devcreatepage.btn_wireclli.click();
	 }
	//End of new change--9/23

	// Network Build Device Creation--Sairam
		
	@When("^I select \"([^\"]*)\" device$")
	public void gpon_netwrkbuild_createform(String gpondevice){
		enduser.gpon_ntwrk_deviceselecting(gpondevice);
		
	}
	
	@Then("^I fill the fields present in the network build$")
	public void gpon_field_fill(){
		enduser.gpon_fill_field();
	}
			
	//--------------------------Dolly-------------------------------------
	  @And("^I verified \"([^\"]*)\" from the Create Type dropdown$")
 	  public void verifyCreateSection(String sectionValue){
 		  enduser.verifyCreateSection(sectionValue);
 	  }
	  


	// ----Dolly
	@And("^I verified \"([^\"]*)\" is displayed in the \"([^\"]*)\" dropdown for search functionality$")
	public void verifySearchAttributeDisplay(String value, String attribute) {

		enduser.verifySearchAttributeDisplay(value, attribute);
	}
	
	// ----Dolly
	@And("^I verified \"([^\"]*)\" is displayed in the \"([^\"]*)\" dropdown for create functionality$")
	public void verifyCreateAttributeDisplay(String value, String attribute) {

		enduser.verifyCreateAttributeDisplay(value, attribute);
	}
	
	
	  @And("^I verified \"([^\"]*)\" from the Inventory Type dropdown$")
 	  public void verifyInventoryType(String sectionValue){
 		  enduser.verifyInventoryType(sectionValue);
 	  }
	  
		@And("^I Select Topology Type as \"([^\"]*)\" with State as \"([^\"]*)\"$")
		public void selectTopologyType_State(String topologyType, String state) {
			enduser.selectTopologyType_State(topologyType,state);
		}
	  
	  
//-------------------------------------MOHIT--------------------------------------------------
	//TC54963
	@And("^I clicked the \"([^\"]*)\" button in \"([^\"]*)\" Detail Page$")
	public void edit_Button_TopologyDetailPage(String button, String relatedTabs) throws InterruptedException{
		enduser.edit_Button_TopologyDetailPage(button);
	}
	
	
//-------------------------------------ANKIT--------------------------------------------------
	//TC39243
	@Then("^I verify all The Fields depending on selected value from SPEC Code dropdown$")
	public void i_verify_all_The_Fields_depending_on_selected_value_from_SPEC_Code_dropdown() throws InterruptedException 
	{
		//Thread.sleep(5000);
		//enduser.click_createlaunchformbutton();
   ovg.verifyfield();
	} 

//-----------------------------------------------MOHIT NEW-------------------------------------------------
			//TC39261
			@And("^I enter the order number with \"([^\"]*)\" data and click$")
			public void orderNumberField(String testdata) throws InterruptedException, AWTException{
				enduser.fill_fields(testdata);
				enduser.clickSearchOrder();
			}
			
			/*@And("I select \"([^\"]*)\" from circuit type$")
		 	 public void selectCircuitType(String circuitType){
		 		 enduser.selectCircuitType(circuitType);
		 	 } */
		//TC55681
					@And("I fill all mandatory fields with \"([^\"]*)\" and fill start and end device with \"([^\"]*)\" and \"([^\"]*)\"$")
					public void fillallFields(String field, String startDevice, String endDevice) throws InterruptedException, AWTException{
						enduser.fillallfields(field, startDevice, endDevice);
					}
					
				    @And("I take the value of circuit Name$")
				    public void circuitName() throws InterruptedException {
				    	enduser.circuitName();
				    }
				    
				    @And("I fill the name field$")
				    public void fillNameField(){
				    	enduser.fillNameField();
				    } 			

		//TC39235
				    @And("I fill the all mandatory fields for ENNI Link with \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" data$")
				    public void fillAllFields(String data1, String SubscriberData, String deviceData) throws InterruptedException, AWTException{
				    enduser.fill_fields(data1);	
				    enduser.fillSubscriberFieldsForService(SubscriberData);
				    enduser.fillDeviceFieldsForService(deviceData);
				    
				    	
				    }

				    //TC39194
			    	@And("^I fill the mandatory fields with \"([^\"]*)\" data to create service$") //Fill the Device create form page details
				    	public void fillmandatoryfieldtoCreateService(String testdata){
				    		enduser.fillmandatoryfieldtoCreateService(testdata);		
				    	} 

			    	
			    	//TC39191
			    	@And("I fill name field as \"([^\"]*)\" and \"([^\"]*)\"$")
			    	public void fillName(String page, String field){
			    		enduser.fillName(page, field);
			    	}
			    	
			    	@And("I fill all mandatory fields with \"([^\"]*)\" and fill device Name as \"([^\"]*)\" and object as \"([^\"]*)\"$")
			    	public void fillallFieldsForNumber(String field, String deviceName, String object) throws InterruptedException, AWTException{
			    		enduser.fillallFieldsForNumber(field,deviceName, object);
			    	} 
			
			    	//tc39190
			    	@And("I fill all mandatory fields with \"([^\"]*)\" and fill start and end device with \"([^\"]*)\" and \"([^\"]*)\" for Link$")
					public void fillallFieldsForLink(String field, String startDevice, String endDevice) throws InterruptedException, AWTException{
						enduser.fillallfieldsForLink(field, startDevice, endDevice);
					} 
			    	
			    	@When("^I verify the launch create functionality$")
			    	public void i_verify_the_launch_create_functionality() throws Throwable {
			    		
			    		enduser.verify_launchcreate();
			    	}
			
			
			    	@And("^I verify Add individual address button$")
			    	public void i_verify_Add_individual_address_button() throws Throwable {
			    		
			    		
			    		enduser.verify_AddIndividual();
			    	}
			    	@And("^I verify mandatory field from \"([^\"]*)\"$")
			    	public void i_verify_mandatory_field_from(String arg1) throws Throwable {
			    		enduser.verify_mandatoryfield(arg1);
			    		
			    	} 
			    	//TC55687
			    	@And("I fill all mandatory fields with \"([^\"]*)\"$")
			    	public void fillAllFieldFOrHSI(String field) throws InterruptedException, AWTException{
			    		enduser.fillAllFieldFOrHSI(field);
			    	}
			
			    	@And("I clicked the \"([^\"]*)\" button in HSI Detail Page$")
			    	public void ClickSaveButton(String button) throws InterruptedException{
			    		enduser.ClickSaveButton(button);
			    	}
			
			    	@And("I click on close tab buttons of all open HSI tab$")
			    	public void closeWin() throws InterruptedException{
			    		enduser.closeWin();
			    	} 
			
			    	@And("^I get the Device name$")
			    	public void i_get_the_Device_name() throws Throwable {
			    		enduser.getdevicename();
			    	}
			    	@And("^I click on topology tab$")
			    	public void i_click_on_topology_tab() throws Throwable {
			    		enduser.click_topologytab();
			    	} 
			
			
			
			
			
			
			
}
