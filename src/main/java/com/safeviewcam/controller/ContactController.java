package com.safeviewcam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.safeviewcam.model.Contact;
import com.safeviewcam.service.ContactService;

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;

	@RequestMapping("/contactDataPage")
	public String contact(Contact contact) {
		contactService.addContact(contact);
		return "contact";
	}

	@RequestMapping("/deleteContact")
	public String deleteContact(Contact contact) {
		contactService.deleteContact(contact);
		return "contactDetails";
	}
	
	@RequestMapping("/editContactData")
	public String editContactData(Contact contact) {
		contactService.editContact(contact);
		return "contactDetails";
	}
	

}
