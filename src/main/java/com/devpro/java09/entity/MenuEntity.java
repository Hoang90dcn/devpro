package com.devpro.java09.entity;

import javax.persistence.Column;

import javax.persistence.Table;

import javax.persistence.Entity;

@Entity
@Table(name = "tbl_categories")
public class MenuEntity extends BasicEntity {
		
	@Column(name = "name_categories")
	private String name_categories;
	
	@Column(name = "id_parent")
	private String id_parent;

	public String getName_categories() {
		return name_categories;
	}

	public void setName_categories(String name_categories) {
		this.name_categories = name_categories;
	}

	public String getId_parent() {
		return id_parent;
	}

	public void setId_parent(String id_parent) {
		this.id_parent = id_parent;
	}
	
	

}
