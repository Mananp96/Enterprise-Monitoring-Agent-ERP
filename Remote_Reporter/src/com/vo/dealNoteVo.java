package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "dealNote")
public class dealNoteVo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int dealNoteid;

	@Column(name = "dealNoteSubject")
	private String dealNoteSubject;

	@Column(name = "dealNoteDesc")
	private String dealNoteDesc;

	@ManyToOne
	dealVo delvo;

	@ManyToOne
	loginVo loginVo;

	public loginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}

	public int getDealNoteid() {
		return dealNoteid;
	}

	public void setDealNoteid(int dealNoteid) {
		this.dealNoteid = dealNoteid;
	}

	public String getDealNoteSubject() {
		return dealNoteSubject;
	}

	public void setDealNoteSubject(String dealNoteSubject) {
		this.dealNoteSubject = dealNoteSubject;
	}

	public String getDealNoteDesc() {
		return dealNoteDesc;
	}

	public void setDealNoteDesc(String dealNoteDesc) {
		this.dealNoteDesc = dealNoteDesc;
	}

	public dealVo getDelvo() {
		return delvo;
	}

	public void setDelvo(dealVo delvo) {
		this.delvo = delvo;
	}
}
