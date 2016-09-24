package com.ctl.it.qa.OmniVueTests.user;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateDevicePage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;
import com.ctl.it.qa.staf.xml.reader.IntDataContainer;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.And;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.annotations.Steps;

public class OSIPScreenStepDefinition {
	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	OVCreateDevicePage devcreatepage;
	//Tab selecting-Create or Search
	
	@And("^I clicked on \"([^\"]*)\" tab$")
	public void clickonTab(String Acttab) throws Exception {
		enduser.click_Tab(Acttab);
		System.out.println(Acttab);
	    
	}
	
	//Going to OSIP Mode
	
	@And("^I goto Activation Page$")
	
	public void I_goto_Activation_Page() throws Exception {
		
		enduser.click_activationTab();
		
	}
	
	/* ************************************************************************* */
						//Search Tab Items are Listed Down
	/* ************************************************************************* */

	@And("^I searched for ([^\"]*)$")			//Currently used by Order search & Passive Device Container 
	public void i_searched_for_device(String field) throws Exception {
		System.out.println(field);
		enduser.fill_fields(field);
		//enduser.click_searchBtn();	    
	}
	
	@And("^I Search for ([^\"]*) in Search Tab$")		//Currently used by Order search
	public void i_searched_for_orders(String field) throws Exception {
		System.out.println(field);
		enduser.fill_fields(field);
		//enduser.click_searchBtn();	    
	}
	
	@And("^I Search for the \"([^\"]*)\" data from Search Tab$") 
	public void i_searched_for_data(String field) throws Exception {
		
		//System.out.println(field+"Advaceorder");
		enduser.fill_fields(field);
		//enduser.click_searchBtn();
	}
	
	@And("^I click on search button for \"([^\"]*)\"$")			//Search button
	public void i_clicked_on_search_button(String search_button) throws Exception 
	{
		enduser.click_searchBtn(search_button);
	}
	
	@And("^I clicked on Advance Search for \"([^\"]*)\"$")
	public void i_clicked_on_Adcance_Search_for(String advanced_Search) throws Throwable {
	    enduser.click_searchBtn(advanced_Search);
	}
	
	@And("^I Search order with DTN$")
	public void i_search_order_with_DTN() throws Exception{
		enduser.advancesearch();
}



	//End of Search Button items ****************************************************************
	
	

	

	@And("^I searched for ([^\"]*) device$")  //Check do we need this
	public void i_searched_for_a_device(String container3) throws Throwable {
		enduser.fill_fields_from("OVActivationPage","US43123-TC24975",container3);
		enduser.get_container_from_xml("OVActivationPage","US43123-TC24975",container3);
		System.out.println(enduser.get_container_from_xml("OVActivationPage","US43123-TC24975",container3));
		//enduser.click_searchBtn();
	     
	}
	
		/* ************************************************************************* */
								//Create Tab Items are Below
		/* ************************************************************************* */
	
	@And("^I go to \"([^\"]*)\" type and select \"([^\"]*)\"$")  //Selecting Type & sub-Type in Create form
	public void selectFormType(String type,String subtype) {
	//fillMandatoryFields(actvtnpage,get_data_for_page(actvtnpage),type);
	//enduser.selectType(type,subtype);
	enduser.selectFormType(type,subtype);
	}
	
	@And("^I Select \"([^\"]*)\" as Filter By value$")     //Selecting the filter type in Create form for Inventory Type
	public void selectFilterby(String tech) throws InterruptedException{
			actvtnpage.click_Technologytype(tech);
			Thread.sleep(1000);
		}
	
	@Then("Select the technology as \"([^\"]*)\" with Device Type as \"([^\"]*)\" with Sub-Type as \"([^\"]*)\"$")	//Selecting the TECHNOLOGY Type with Device & sub-device categories
	public void createFormpage(String techtype,String devtype,String devsubtype){
		enduser.createFormpage(techtype,devtype,devsubtype);
	}
	
	@Then("^Select the Role as \"([^\"]*)\" with Device Type as \"([^\"]*)\" with Sub-Type as \"([^\"]*)\"$") //Selecting the Role Type with Device & sub-device categories
	public void createroleform(String role,String devtype,String devsubtype){
		enduser.createroleform(role,devtype,devsubtype);
	}	

	@And("^Select Device Type as ([^\"]*) with Sub-Type as ([^\"]*)$")  //Selecting Device category Type & its Sub-category for Inventory Create form
	public void createFormpage(String devtype,String devsubtype){
		
		enduser.device_select(devtype,devsubtype);		
	}	
	
	@And("^I Select Port Type as \"([^\"]*)\"$")
	public void create_tab_porttype(String Porttype){
		enduser.selectport_createtab(Porttype);
	}
	
	@And("^I select \"([^\"]*)\" location type$")		//Sairam code merge---21/7/2016--@US48525 @TC53733
	public void select_locationtype(String locationtype) throws Throwable{
		enduser.locationtype(locationtype);
	}
	
	/* ******************Network Create Form ************ */
	
	@And("^I Launch the Network form with \"([^\"]*)\"$")
	public void Enter_WirecenterCLLI_and_EngOrdId(String detailsgpon) throws Throwable{
		enduser.fill_fields(detailsgpon);		
		actvtnpage.btn_Netwrkbuildcreate();
	}
		
	//End of Create Button items ****************************************************************
	
	@Then("^Validate the fields present in the result page$") // Move to UserStep Definition
	public void attribute_validation(){
		enduser.attri_field();
	}
	
	

}
