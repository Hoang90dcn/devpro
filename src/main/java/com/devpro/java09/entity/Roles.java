package com.devpro.java09.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity 
@Table(name = "tbl_roles")
public class Roles extends BasicEntity implements GrantedAuthority  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Column(name = "nameRole", length = 50)
	private String nameRole;
	
	
	@Column(name = "description", length = 300)
	private String description;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "role")
	private List<UserEntity> users = new ArrayList<UserEntity>();
	

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


	@Override
	public String getAuthority() {
		
		return this.nameRole;
	}
	
	
	
}
