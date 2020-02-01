package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "owner_data")
public class owner_register_vo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ownerid;

	@Column(name = "First_name")
	private String firstName;

	@Column(name = "Last_name")
	private String lastName;

	@Column(name = "company_name")
	private String companyName;

	@Column(name = "User_name")
	private String userName;

	@Column(name = "Password")
	private String password;

	@Column(name = "country_name")
	private String countryName;

	@Column(name = "company_size")
	private String cSize;

	@Column(name = "owner_phone")
	private String phone;

	public int getOwnerid() {
		return ownerid;
	}

	public void setOwnerid(int ownerid) {
		this.ownerid = ownerid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPass() {
		return password;
	}

	public void setPass(String pass) {
		this.password = pass;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getcSize() {
		return cSize;
	}

	public void setcSize(String cSize) {
		this.cSize = cSize;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
