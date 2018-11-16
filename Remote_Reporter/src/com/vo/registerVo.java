package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="user_register")
public class registerVo {
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int regid;
		
		@Column(name="first_name")
		private String firstName;
		
		@Column(name="last_name")
		private String lastName;
		
		@Column(name="company_name")
		private String companyName;
		
		
		
		@ManyToOne 
		private loginVo lvo;
		

		public loginVo getLvo() {
			return lvo;
		}

		public void setLvo(loginVo lvo) {
			this.lvo = lvo;
		}

		public int getRegid() {
			return regid;
		}

		public void setRegid(int regid) {
			this.regid = regid;
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

		
}
