package com.vo;

import javax.persistence.*;

@Entity
@Table(name = "Documents_folder")
public class FolderVo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int folderId;

	@ManyToOne
	private loginVo loginVO;

	public loginVo getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(loginVo loginVO) {
		this.loginVO = loginVO;
	}

	@Column(name = "folderName")
	private String folderName;

	@Column(name = "parentFolderId")
	private int parentFolderId;

	public int getParentFolderId() {
		return parentFolderId;
	}

	public void setParentFolderId(int parentFolderId) {
		this.parentFolderId = parentFolderId;
	}

	public int getFolderId() {
		return folderId;
	}

	public void setFolderId(int folderId) {
		this.folderId = folderId;
	}

	public String getFolderName() {
		return folderName;
	}

	public void setFolderName(String folderName) {
		this.folderName = folderName;
	}
}
