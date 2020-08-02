package com.devpro.java09.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;


@Entity
@Table(name = "tbl_contact")
public class ContactEntity  extends BasicEntity{

	@Column(name = "name")
	private String name;
	
	@Column (name = "email")
	private String email;
	
	@Column (name = "Subject")
	private String Subject;
	
	@Lob
	@Column(name = "message", columnDefinition = "text")
	private String message;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return Subject;
	}

	public void setSubject(String subject) {
		Subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
