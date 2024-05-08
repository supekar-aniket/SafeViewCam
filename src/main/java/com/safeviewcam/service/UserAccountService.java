package com.safeviewcam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safeviewcam.model.UserAccount;
import com.safeviewcam.repository.UserAccountRepository;

@Service
public class UserAccountService {
	
	@Autowired
	private UserAccountRepository userAccountRepository;
	
//	User - Create account
	public void createAccount(UserAccount userAccount) {
	    userAccountRepository.save(userAccount);
	}
	
//	Admin - delete user
	public void deleteUser (UserAccount userAccount) {
		userAccountRepository.delete(userAccount);
	}
	
	

}
