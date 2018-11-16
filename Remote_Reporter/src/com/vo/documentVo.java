package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="DocumentsTable")
public class documentVo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int fileid;
	
	@Column(name="fileName")
	private String fileName;
	
	
	
	@Column(name="filePath")
	private String filePath;
	
	@Column(name="folderName")
	private String folderName;
	
	@ManyToOne dealVo dealVo;
	@ManyToOne taskVo taskVo;
	
	@ManyToOne registerVo regvo;
	
	@ManyToOne loginVo loginVo;

	
	public loginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}
	
	public registerVo getRegvo() {
		return regvo;
	}
	public void setRegvo(registerVo regvo) {
		this.regvo = regvo;
	}
	public taskVo getTaskVo() {
		return taskVo;
	}
	public void setTaskVo(taskVo taskVo) {
		this.taskVo = taskVo;
	}
	
	
	public int getFileid() {
		return fileid;
	}
	public void setFileid(int fileid) {
		this.fileid = fileid;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFolderName() {
		return folderName;
	}
	public void setFolderName(String folderName) {
		this.folderName = folderName;
	}
	public dealVo getDealVo() {
		return dealVo;
	}
	public void setDealVo(dealVo dealVo) {
		this.dealVo = dealVo;
	}
	
	
}
