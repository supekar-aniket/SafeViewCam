package com.safeviewcam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.safeviewcam.model.Admin;
import com.safeviewcam.model.UserAccount;
import com.safeviewcam.service.LoginService;


@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping("/login")
	public String userLogin(UserAccount userAccount,Admin admin) {
		return loginService.userLogin(userAccount,admin);
	}

}
