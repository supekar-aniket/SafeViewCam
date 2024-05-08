package com.safeviewcam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safeviewcam.model.Contact;
import com.safeviewcam.repository.ContactRepository;

@Service
public class ContactService {

	@Autowired
	private ContactRepository contactRepository;

	public void addContact(Contact contact) {
		contactRepository.save(contact);
	}
	
	public void deleteContact(Contact contact) {
		contactRepository.delete(contact);
	}
	
	public void editContact(Contact contact) {
		contactRepository.save(contact);
	}
	

}
