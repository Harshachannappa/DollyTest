package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import net.thucydides.core.annotations.Steps;

import java.awt.AWTException;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;

public class OVDeviceStepDefinition {
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;

	@And("I click on \"([^\"]*)\" button under build components$")
	public void clickDeviceButton(String Button) throws InterruptedException{
		Thread.sleep(3000);
			if(Button.equalsIgnoreCase("Device-1 CLLI")){
				actvtnpage.btn_device1CLLI.click();
			}else if(Button.equalsIgnoreCase("Device-2 CLLI")){
				actvtnpage.btn_device2CLLI.click();
			}
	}
	
	@And("I fill the mandatory fields for \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"")
	public void fillmandatoryfield(String testData1, String testData2, String testData3) throws InterruptedException, AWTException{
		enduser.fillmandatoryfieldForEquipment(testData1, testData2, testData3);	
	}
	
	@And("I click on validate device button$")
	public void validateDeviceButton(){
		actvtnpage.btn_validateDevice.click();
	}
	
	//..Mohit............................
	//TC39215
	@And("I click on hyperlink link for corresponding Transport Path$")
	public void clickHyperLink(){
		actvtnpage.lnk_RouteName.click();
	}
	
	@And("I click edit button and verify all the fields are displayed in the edit section$")
	public void verifyButtons() throws InterruptedException{
		enduser.verifyAllButtons();
	}
	
	@And("I Update the NMI circuit value with \"([^\"]*)\"")
	public void updateValue(String circuitValue) throws InterruptedException, AWTException{
		enduser.updateValue(circuitValue);
	} 

	@And("I click the Edit button of the Route$")
	public void I_click_the_Edit_button_of_the_Route() throws InterruptedException {
		enduser.clickEditButton();
	}
}
