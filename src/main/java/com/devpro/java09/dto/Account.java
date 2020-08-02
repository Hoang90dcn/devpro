package com.devpro.java09.dto;

public class Account {
	private String firstName;
	private String lastName;
	private String email;
	private String pass;
	private String RepeatPass;
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getRepeatPass() {
		return RepeatPass;
	}
	public void setRepeatPass(String repeatPass) {
		RepeatPass = repeatPass;
	}
}
