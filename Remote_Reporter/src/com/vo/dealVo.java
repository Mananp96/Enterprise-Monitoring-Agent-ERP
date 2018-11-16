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
@Table(name="ownerDeal")
public class dealVo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int dealid;
	

	@Column(name="dealName")
	private String dealName;
	
	@ManyToOne ownerCompanyVo ownerCompanyVo;
	
	@Column(name="dealValue")
	private String dealValue;
	
	@Column(name="milestone")
	private String milestone;
	
	@Column(name="closeDate")
	private Date closeDate;
	
	@Column(name="dealDate")
	private Date dealDate;
	
	@ManyToOne ownerContactVo ownerContactVo;
	
	
	@Column(name="tags")
	private String tags;
	
	@Column(name="dealDesc")
	private String dealDesc;
	
@ManyToOne loginVo loginVo;
	
	public loginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}


	public int getDealid() {
		return dealid;
	}

	public void setDealid(int dealid) {
		this.dealid = dealid;
	}

	public String getDealName() {
		return dealName;
	}

	public void setDealName(String dealName) {
		this.dealName = dealName;
	}

	public ownerCompanyVo getOwnerCompanyVo() {
		return ownerCompanyVo;
	}

	public void setOwnerCompanyVo(ownerCompanyVo ownerCompanyVo) {
		this.ownerCompanyVo = ownerCompanyVo;
	}

	public String getDealValue() {
		return dealValue;
	}

	public void setDealValue(String dealValue) {
		this.dealValue = dealValue;
	}

	public String getMilestone() {
		return milestone;
	}

	public void setMilestone(String milestone) {
		this.milestone = milestone;
	}


	public Date getCloseDate() {
		return closeDate;
	}

	public void setCloseDate(Date closeDate) {
		this.closeDate = closeDate;
	}

	public Date getDealDate() {
		return dealDate;
	}

	public void setDealDate(Date dealDate) {
		this.dealDate = dealDate;
	}

	public ownerContactVo getOwnerContactVo() {
		return ownerContactVo;
	}

	public void setOwnerContactVo(ownerContactVo ownerContactVo) {
		this.ownerContactVo = ownerContactVo;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getDealDesc() {
		return dealDesc;
	}

	public void setDealDesc(String dealDesc) {
		this.dealDesc = dealDesc;
	}

	
	
	
}
