package com.safeviewcam.controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.safeviewcam.model.UserAccount;
import com.safeviewcam.service.UserAccountService;

@Controller
public class UserAccountController {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	private UserAccountService userAccountService;
	
	@RequestMapping("/createAccount")
	public String createAccount(UserAccount userAccount) {
		userAccountService.createAccount(userAccount);
		return "login";
	}
	
	@RequestMapping("/deleteUser")
	public String deleteUser(UserAccount userAccount) {
		userAccountService.deleteUser(userAccount);
		return "userDetails";
	}
	
	
}
