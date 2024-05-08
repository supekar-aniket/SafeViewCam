package com.safeviewcam.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "User_Account")
public class UserAccount {
    
	@Column(name = "role")
	private String role = "User";
    
	@Column(name = "name")
	private String name;
	
    @Id
    @Column(name = "email")
    private String email;

    @Column(name = "mobileno")
    private String mobileno;
    
    @Column(name = "address")
    private String address;
    
    @Column(name = "petname")
    private String petname;

    @Column(name = "password")
    private String password;

	public UserAccount() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserAccount(String role, String name, String email, String mobileno, String address, String petname,
			String password) {
		super();
		this.role = role;
		this.name = name;
		this.email = email;
		this.mobileno = mobileno;
		this.address = address;
		this.petname = petname;
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPetname() {
		return petname;
	}

	public void setPetname(String petname) {
		this.petname = petname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "UserAccount [role=" + role + ", name=" + name + ", email=" + email + ", mobileno=" + mobileno
				+ ", address=" + address + ", petname=" + petname + ", password=" + password + "]";
	}

}
