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
@Table(name = "ownerTask")

public class taskVo {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int taskid;

	@Column(name = "TaskName")
	private String taskName;

	@ManyToOne
	ownerCompanyVo ownerCompanyVo;

	@Column(name = "Category")
	private String category;

	@Column(name = "milestone")
	private String milestone;
	
	@Column(name = "closeDate")
	private Date closeDate;

	@Column(name = "taskDate")
	private Date taskDate;

	@Column(name = "taskTime")
	private String taskTime;

	@ManyToOne
	ownerContactVo ownerContactVo;

	@Column(name = "taskStatus")
	private String taskStatus;

	@Column(name = "taskPriority")
	private String taskPriority;

	@Column(name = "tags")
	private String tags;

	@Column(name = "taskDesc")
	private String taskDesc;

	@ManyToOne
	loginVo loginVo;

	public loginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}

	public int getTaskid() {
		return taskid;
	}

	public void setTaskid(int taskid) {
		this.taskid = taskid;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public ownerCompanyVo getOwnerCompanyVo() {
		return ownerCompanyVo;
	}

	public void setOwnerCompanyVo(ownerCompanyVo ownerCompanyVo) {
		this.ownerCompanyVo = ownerCompanyVo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public Date getTaskDate() {
		return taskDate;
	}

	public void setTaskDate(Date taskDate) {
		this.taskDate = taskDate;
	}

	public String getTaskTime() {
		return taskTime;
	}

	public void setTaskTime(String taskTime) {
		this.taskTime = taskTime;
	}

	public ownerContactVo getOwnerContactVo() {
		return ownerContactVo;
	}

	public void setOwnerContactVo(ownerContactVo ownerContactVo) {
		this.ownerContactVo = ownerContactVo;
	}

	public String getTaskStatus() {
		return taskStatus;
	}

	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}

	public String getTaskPriority() {
		return taskPriority;
	}

	public void setTaskPriority(String taskPriority) {
		this.taskPriority = taskPriority;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getTaskDesc() {
		return taskDesc;
	}

	public void setTaskDesc(String taskDesc) {
		this.taskDesc = taskDesc;
	}
}
