package com.ctl.it.qa.OmniVueTests.Sanity;

import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;
import com.ctl.it.qa.staf.Page;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class OVHomepagestepdefinition {
	
	@Steps
	UserSteps enduser;
	
	
	@When("^I am in the Omnivue Welcome page$")
	public void i_am_in_the_Omnivue_Welcome_page() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		Thread.sleep(1000);
		System.out.println("First stage");
		enduser.Homepagevalidation();
		//sanityenduser.Homepagevalidation();
	   // throw new PendingException();
	}

	@And("^I need to check User login box$")
	public void i_need_to_check_User_login_box() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		enduser.Userloginvalidation();
	   // throw new PendingException();
	}

	@When("^I need to evaluate all the systems are up & running$")
	public void i_need_to_evaluate_all_the_systems_are_up_running() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		enduser.Systemcheckonloginpage();
		
	   // throw new PendingException();
	}	

}
