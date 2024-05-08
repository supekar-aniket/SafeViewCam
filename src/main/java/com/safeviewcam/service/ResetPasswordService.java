package com.safeviewcam.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safeviewcam.model.UserAccount;

@Service
public class ResetPasswordService {

	@Autowired 
	SessionFactory sessionFactory;

	public String resetPassword(UserAccount userAccount) throws Exception {

		Session session = sessionFactory.openSession();

//		Get Primary key from UserAccount table 
		UserAccount userAccount2 = session.get(UserAccount.class, userAccount.getEmail());

		String page = "forgetPassword";

		if ((userAccount2 != null) && (userAccount2.getPetname().equalsIgnoreCase(userAccount.getPetname()))) {

			// Update the password for the user account
			userAccount2.setPassword(userAccount.getPassword());

			org.hibernate.Transaction transaction = session.beginTransaction();
			session.save(userAccount2); // save only password
			transaction.commit();
			page = "login";

		} else {

		}

		return page;
	}

}
