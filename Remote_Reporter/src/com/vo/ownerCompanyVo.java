package com.vo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ownerCompany")
public class ownerCompanyVo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int companyid;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "company_name")
	private String companyName;

	@Column(name = "email")
	private String email;

	@Column(name = "tags")
	private String tags;

	@Column(name = "company_url")
	private String companyUrl;

	@Column(name = "companyDate")
	private Date companyDate;

	@Column(name = "phone")
	private String phone;

	@Column(name = "address")
	private String address;

	@ManyToOne
	country_vo country_vo;

	@ManyToOne
	loginVo loginVo;

	public loginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}

	public country_vo getCountry_vo() {
		return country_vo;
	}

	public void setCountry_vo(country_vo country_vo) {
		this.country_vo = country_vo;
	}

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCompanyDate() {
		return companyDate;
	}

	public void setCompanyDate(Date companyDate) {
		this.companyDate = companyDate;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getCompanyUrl() {
		return companyUrl;
	}

	public void setCompanyUrl(String companyUrl) {
		this.companyUrl = companyUrl;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
