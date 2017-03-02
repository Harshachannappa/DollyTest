package com.ctl.it.qa.OmniVueTests.user;

import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class OVCircuitStepDefinition {
	
	
	@Steps
	UserSteps enduser;	

@When("^I fill all the editable field with \"([^\"]*)\"$")
public void i_fill_all_the_editable_field_with(String field) throws Throwable {
	
	enduser.editallField(field);
}

@Then("^I verify all fileld of \"([^\"]*)\"$")
public void i_verify_all_fileld_of(String field) throws Throwable {
    // Write code here that turns the phrase above into concrete actions
	
	//enduser.validate_circuit(field);
	enduser.validate_circuit(field);
}

}
