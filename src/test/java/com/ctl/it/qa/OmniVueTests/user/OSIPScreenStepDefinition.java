package com.ctl.it.qa.OmniVueTests.user;

import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OSIPScreenStepDefinition {
	
	@Steps
	UserSteps enduser;
	
	@And("^I goto Activation Page$")
	
	public void I_goto_Activation_Page() throws Exception {
		
		enduser.click_activationTab();
		
	}
	@And("^I clicked on \"([^\"]*)\" tab$")
	public void clickonTab(String Acttab) throws Exception {
		enduser.click_Tab(Acttab);
		System.out.println(Acttab);
	    
	}


	@And("^I searched for ([^\"]*)$")
	public void i_searched_for_device(String field) throws Exception {
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
	
	@And("^I clicked on search button for \"([^\"]*)\"$")
	public void i_clicked_on_search_button(String search_button) throws Exception 
	{
		enduser.click_searchBtn(search_button);
	}


	/* Not necessary-5/27/2016
	@And("^I clicked on search button$")
	public void i_clicked_on_search_button() throws Exception 
	{
		enduser.click_searchBtn();
	}
	*/
	@And("^I clicked on view icon of search result page$")
	public void i_clicked_on_view_icon_of_search_result_page() throws Exception {
		Thread.sleep(3000);
		enduser.select_viewBtn();
		Thread.sleep(10000);
	     
	}
	@And("^I verified view page and clicked on \"([^\"]*)\" tab$")
	public void i_verified_view_page_of_device_and_clicked_on_services_tab(String tab) throws Exception {
		//enduser.verify_deviceSearchPage();
		System.out.println("entered the first stage"+tab);
		enduser.click_servicesTab(tab);
		
	}

	@And("^I searched for ([^\"]*) device$")
	public void i_searched_for_a_device(String container3) throws Throwable {
		enduser.fill_fields_from("OVActivationPage","US43123-TC24975",container3);
		enduser.get_container_from_xml("OVActivationPage","US43123-TC24975",container3);
		System.out.println(enduser.get_container_from_xml("OVActivationPage","US43123-TC24975",container3));
		//enduser.click_searchBtn();
	     
	}

	/*@And("^I need to search for \"([^\"]*)\"$")
	
	public void I_goto_Services_Page(String field) throws Exception {
		
		//Shifted 3 lines from I_goto_Activation_Page() down here
		//enduser.click_searchtab();
		System.out.println(field);
		enduser.fill_fields(field);
		
		enduser.click_searchbtn();
		enduser.select_viewbtn();
		enduser.verify_servicetab();
		enduser.click_servicestab();
		
	}
	*/
	@Then("^Validate the fields present in the result page$")
	public void attribute_validation(){
		enduser.attri_field();
	}
	
	@And("^I clicked on Advance Search for \"([^\"]*)\"$")//Need to remove this-Duplicate search
	public void i_clicked_on_Adcance_Search_for(String advanced_Search) throws Throwable {
	    enduser.click_searchBtn(advanced_Search);
	}

	@And("^I Search order with DTN$")
	public void i_search_order_with_DTN() throws Exception{
		enduser.advancesearch();
}
}
