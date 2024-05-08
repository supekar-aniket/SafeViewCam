package com.safeviewcam.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safeviewcam.model.Admin;
import com.safeviewcam.model.UserAccount;

@Service
public class LoginService {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public String userLogin(UserAccount userAccount,Admin admin) {

	    Session session = sessionFactory.openSession();

//	    Get Primary key(email) from UserAccount table
	    UserAccount userAccount2 = session.get(UserAccount.class, userAccount.getEmail());
	    
//	    Get Primary key(email) from Admin table
	    Admin admin2 = session.get(Admin.class, admin.getEmail());
	    
	    String page = "login";
//		Check admin password and role
	    if ((admin2 != null) && (admin.getPassword().equals(admin2.getPassword())) && admin2.getRole().equalsIgnoreCase("Admin")) {
	        page = "contactDetails";
	    }
//	    Check user password and role
	    else if ((userAccount2 != null) && (userAccount.getPassword().equals(userAccount2.getPassword())) && userAccount2.getRole().equalsIgnoreCase("User")) {
	        page = "contact";
	    }

	    return page; 
	} 


}
