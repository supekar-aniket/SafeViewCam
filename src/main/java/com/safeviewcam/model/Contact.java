package com.safeviewcam.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Contacts")
public class Contact {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "contact_id")
    private Integer contact_id;
    
    @Column(name = "email")
    private String email;
    
    @Column(name = "mobileno")
    private String mobileno;
    
    @Column(name = "subject")
    private String subject;
    
    @Column(name = "message")
    private String message;
    
    @Column(name = "status")
    private String status = "Pending";

	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Contact(Integer contact_id, String email, String mobileno, String subject, String message, String status) {
		super();
		this.contact_id = contact_id;
		this.email = email;
		this.mobileno = mobileno;
		this.subject = subject;
		this.message = message;
		this.status = status;
	}

	public Integer getContact_id() {
		return contact_id;
	}

	public void setContact_id(Integer contact_id) {
		this.contact_id = contact_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Contact [contact_id=" + contact_id + ", email=" + email + ", mobileno=" + mobileno + ", subject="
				+ subject + ", message=" + message + ", status=" + status + "]";
	}

	
    
}
