package com.safeviewcam.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Admin_Account")
public class Admin {
	
	@Column(name = "role")
	private String role = "Admin";
	
	@Id
	@Column(name = "email")
	private String email;
	
	@Column(name = "password")
	private String password;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(String role, String email, String password) {
		super();
		this.role = role;
		this.email = email;
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [role=" + role + ", email=" + email + ", password=" + password + "]";
	}

}
