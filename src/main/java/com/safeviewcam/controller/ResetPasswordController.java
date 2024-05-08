package com.safeviewcam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.safeviewcam.model.UserAccount;
import com.safeviewcam.service.ResetPasswordService;

@Controller
public class ResetPasswordController {
	
	@Autowired
	private ResetPasswordService resetPasswordService;
	
	@RequestMapping("/resetPassword")
	public String resetPassword(UserAccount userAccount) throws Exception {
		resetPasswordService.resetPassword(userAccount);
		return "login";
	}
}
