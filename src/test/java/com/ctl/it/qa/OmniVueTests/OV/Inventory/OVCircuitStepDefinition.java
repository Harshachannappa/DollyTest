package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import java.awt.AWTException;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVCircuitStepDefinition {
	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	
	
	@And("^I select Circuit type as \"([^\"]*)\"$")
	public void i_select_link_type_as (String Ltype) throws Throwable {
		
		actvtnpage.ddl_circuittype.selectByVisibleText(Ltype) ;
		
		
		
	}
	@And("I clicked the \"([^\"]*)\" button for Topology Virtual Circuit$")
    public void clickEditForTVC(String button) throws InterruptedException{
    	enduser.clickEditForTVC();
    } 
	 @And("I edit all enabeld fields for circuit details as\"([^\"]*)\"$")
	    public void editFields(String field) throws InterruptedException, AWTException{
	    		enduser.editFields(field);
	    }

	    
	    @And("I verify and delete the circuit details$")
	    public void verifyfield() throws InterruptedException{
	    	enduser.verifyfield();
	    } 
	

}
