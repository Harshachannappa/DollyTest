package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVContactSearchDetailsPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class OVCreateContactStepDefinition {
	@Steps
	UserSteps enduser;
	OVContactSearchDetailsPage ovcsdp;
	
	@And("^I select all the checkbox$")
	public void i_select_all_the_checkbox() throws Throwable {
		
		enduser.clickcontactchekbox();
		System.out.println("Ankit");
		
	}
	
	
	
	
	@When("^I fill all the manadtory field from \"([^\"]*)\" and \"([^\"]*)\"$")
	public void i_fill_all_the_manadtory_field_from_and(String page, String field) throws Throwable {
		Thread.sleep(9000);
		enduser.createfillmanadatoryfield(page, field);
		

	}
	 
	

	@When("^I click on AuditLog tab$")
	public void i_click_on_AuditLog_tab() throws Throwable {
		
		enduser.click_auditlogtab();
		
	}
	
	@When("^I enter the circuit name$")
	public void i_enter_the_circuit_name() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		enduser.enter_circuitname();
	}
	
	
	

	


	@When("^I verify all the manadtory field from \"([^\"]*)\" and \"([^\"]*)\"$")
	public void i_verify_all_the_manadtory_field_from_and(String page, String field) throws Throwable {
		enduser.verifymanadatoryfield( page,  field);

	}
	
	@Given("^I click on Add more address button$")
	public void i_click_on_Add_more_address_button() throws Throwable {
		enduser.click_Addmoreaddress();
	}
	@Given("^I click on Edit button$")
	public void i_click_on_Edit_button() throws Throwable {
		enduser.click_edit();
	}
	@Given("^I select all the required data$")
	public void i_select_all_the_required_data() throws Throwable {
		enduser.selectrequireddata();
	}
	@Given("^I click on service area search result$")
	public void i_click_on_service_area_search_result() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		enduser.click_serviceareaSearch();
	}
	@Then("^I verify the update value$")
	public void i_verify_the_update_value() throws Throwable {
		enduser.verifyupdatevalue();
	}

	//TC55696
	@When("^I enter all the manadtory data into field$")
	public void i_enter_all_the_manadtory_data_into_field() throws Throwable {	
		enduser.enter_mandatoryfield();
	} 
	
	//TC39239
	@When("^I enter the circuit deatils$")
	public void i_enter_the_circuit_deatils() throws Throwable {
		enduser.enter_circuit();
	} 
	
	@Given("^I click on circuit link$")
	public void i_click_on_circuit_link() throws Throwable {
	enduser.click_circuitlink();
	} 
	
	
	//TC55693
		@And("^I click on Add device button$")
		public void i_click_on_Add_device_button() throws Throwable {
			enduser.click_AddDevice();
			
		}

		@And("^I Enter Device name$")
		public void i_Enter_Device_name() throws Throwable {
			enduser.enter_devicename();
		}

		@And("^I click on Searchdevice$")
		public void i_click_on_Searchdevice() throws Throwable {
			enduser.click_searchdevice();
		}

		@And("^I click on Associate Device$")
		public void i_click_on_Associate_Device() throws Throwable {
			enduser.click_AssociateDevice();
		} 

}
