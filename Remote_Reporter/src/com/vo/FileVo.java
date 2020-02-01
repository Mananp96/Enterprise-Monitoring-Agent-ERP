package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ADDFile")
public class FileVo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int fileId;

	@Column(name = "FileName")
	private String fileName;

	@ManyToOne
	private FolderVo folderVo;

	@ManyToOne
	loginVo loginVo;

	public loginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}

	public FolderVo getFolderVo() {
		return folderVo;
	}

	public void setFolderVo(FolderVo folderVo) {
		this.folderVo = folderVo;
	}

	public int getFileId() {
		return fileId;
	}

	public void setFileId(int fileId) {
		this.fileId = fileId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
}
