package com.safeviewcam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/indexPage")
	public String index() {
		return "index";
	}

	@RequestMapping("/aboutPage")
	public String about() {
		return "about";
	}

	@RequestMapping("/contactPage")
	public String contact() {
		return "contact";
	}

	@RequestMapping("/productPage")
	public String product() {
		return "product";
	}

	@RequestMapping("/pricePage")
	public String price() {
		return "price";
	}

	@RequestMapping("/servicePage")
	public String service() {
		return "service";
	}

	@RequestMapping("/contactDetailsPage")
	public String contactDetailsPage() {
		return "contactDetails";
	}

	@RequestMapping("/editContact")
	public String editContact() {
		return "editContact";
	}
	
	@RequestMapping("/loginPage")
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping("/userAccountPage")
	public String createAccountPage() {
		return "userAccount";
	}
	
	@RequestMapping("/userDetailsPage")
	public String userDetailsPage() {
		return "userDetails";
	}
	
	@RequestMapping("/forgetPasswordPage")
	public String forgetPasswordPage() {
		return "forgetPassword";
	}
	
	
}











