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
@Table(name="ownercontact")
public class ownerContactVo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int contactid;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@ManyToOne ownerCompanyVo ownerCompanyVo;
	
	@Column(name="email")
	private String email;
	
	@Column(name="tags")
	private String tags;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="contactDate")
	private Date contactDate;
	
	@Column(name="address")
	private String address;
	
	@ManyToOne country_vo country_vo;
	
    @ManyToOne loginVo loginVo;
	
	public loginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}



	public int getContactid() {
		return contactid;
	}

	public void setContactid(int contactid) {
		this.contactid = contactid;
	}

	public ownerCompanyVo getOwnerCompanyVo() {
		return ownerCompanyVo;
	}

	public void setOwnerCompanyVo(ownerCompanyVo ownerCompanyVo) {
		this.ownerCompanyVo = ownerCompanyVo;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
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

	public country_vo getCountry_vo() {
		return country_vo;
	}

	public void setCountry_vo(country_vo country_vo) {
		this.country_vo = country_vo;
	}

	public Date getContactDate() {
		return contactDate;
	}

	public void setContactDate(Date contactDate) {
		this.contactDate = contactDate;
	}

	
}
