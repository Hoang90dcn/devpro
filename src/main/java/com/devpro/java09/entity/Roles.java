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
@Table(name = "tbl_roles")
public class Roles extends BasicEntity{
	@Column(name = "nameRole", length = 50)
	private String nameRole;
	
	
	@Column(name = "description", length = 300)
	private String description;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "role")
	private List<Users> users = new ArrayList<Users>();
	

	public String getNameRole() {
		return nameRole;
	}


	public void setNameRole(String nameRole) {
		this.nameRole = nameRole;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
