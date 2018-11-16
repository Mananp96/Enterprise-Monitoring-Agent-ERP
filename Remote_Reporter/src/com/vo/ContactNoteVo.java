package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="contactNote")
public class ContactNoteVo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int contactNoteid;
	
	@Column(name="contactNoteSubject")
	private String contactNoteSubject;
	
	@Column(name="contactNoteDesc")
	private String contactNoteDesc;
	
	@ManyToOne ownerContactVo ownerContactVo;
		
	@ManyToOne loginVo loginVo;
	
	public loginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}

	public int getContactNoteid() {
		return contactNoteid;
	}

	public void setContactNoteid(int contactNoteid) {
		this.contactNoteid = contactNoteid;
	}

	public String getContactNoteSubject() {
		return contactNoteSubject;
	}

	public void setContactNoteSubject(String contactNoteSubject) {
		this.contactNoteSubject = contactNoteSubject;
	}

	public String getContactNoteDesc() {
		return contactNoteDesc;
	}

	public void setContactNoteDesc(String contactNoteDesc) {
		this.contactNoteDesc = contactNoteDesc;
	}

	public ownerContactVo getOwnerContactVo() {
		return ownerContactVo;
	}

	public void setOwnerContactVo(ownerContactVo ownerContactVo) {
		this.ownerContactVo = ownerContactVo;
	}

	
	
}
