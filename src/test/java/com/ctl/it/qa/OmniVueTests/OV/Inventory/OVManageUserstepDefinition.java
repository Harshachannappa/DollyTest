package com.ctl.it.qa.OmniVueTests.OV.Inventory;

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

public class OVManageUserstepDefinition {

	@Steps
	UserSteps enduser;
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

	@And("^I hover \"([^\"]*)\" under \"([^\"]*)\" menu$")
	public void hover(String subMenu, String menu) throws InterruptedException {
		enduser.hover_menuItem(subMenu, menu);
	}

	@And("^I fill Manage Users details with \"([^\"]*)\" and \"([^\"]*)\" data$")
	public void i_fill_Manage_Users_details(String filterBy, String filterText) throws Exception {
		enduser.fillUserDetails(filterBy, filterText);
	}

	@And("^I click search User button$")
	public void i_click_SearchUser_button() throws InterruptedException {
		enduser.click_SearchUser_button();
	}

	@And("^I click on Manage Hierarchy tab under User Search result in Manage Users Page$")
	public void i_clicked_on_Manage_Hierarchy_tab_under_User_Search_result_in_Manage_Users_Page() throws Exception {
		enduser.click_tab();

	}

	@And("^I validate the details from Manager Hierarchy to VP Level$")
	public void i_validate_the_details_from_Manager_Hierarchy_to_VP_Level() throws Exception {
		enduser.validate_ManagerHierarchyToVPLevel();

	}

}
