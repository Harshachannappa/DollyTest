package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVLocationStepDefinition {

	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	
	@And("^I Search for sample Street Name as \"([^\"]*)\"$")
	public void i_select_street_name_as (String Streetname) throws Throwable {
		
		actvtnpage.tbx_streetname.sendKeys(Streetname);
		
	}
	
	@And("^I verify all the field on ovloaction page$")
	public void i_verify_all_the_field_on_ovloaction_page() throws Throwable {
		enduser.validateallfield();
	} 
	
	@And("^I enter unique data from \"([^\"]*)\" and \"([^\"]*)\"$")
	public void i_enter_unique_data_from_and(String arg1, String arg2) throws Throwable {
		enduser.make_UniqueData(arg1, arg2);
	} 
}
