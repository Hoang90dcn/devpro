package com.devpro.java09.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_users")

public class Users extends BasicEntity{
	
	@Column(name = "firstName", length = 50)
	private String  firstName;
	
	@Column(name = "lastName", length = 50)
	private String lastName;
	
	@Column(name = "email", length = 50)
	private String email;
	
	@Column (name = "password", length = 50)
	private String password;
	
	@Column(name = "numberphone", length = 12)
	private String numberphone;

	
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "tbl_user_role",
		joinColumns = @JoinColumn(name="id_user"),
		inverseJoinColumns = @JoinColumn(name="id_role")
	)
	private List<Roles> role = new ArrayList<Roles>();
	
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNumberphone() {
		return numberphone;
	}

	public void setNumberphone(String numberphone) {
		this.numberphone = numberphone;
	}
	
	
}
