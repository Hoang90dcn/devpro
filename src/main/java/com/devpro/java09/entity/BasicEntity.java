package com.devpro.java09.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass

public abstract class BasicEntity {
	
	@Id // xác định đây là khoá chính.
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto-increment.
	@Column(name = "id", nullable = false) 
	protected Integer id; // primary-key
	
	@Column(name = "created_date")
	protected LocalDateTime created_date;
	
	@Column (name = "created_by")
	protected String created_by;
	
	@Column ( name = "updated_date")
	protected LocalDateTime updated_date;
	
	@Column (name = "updated_by")
	private String updated_by;

	
	@Column (name = "statuss", columnDefinition = "TINYINT")
	private Boolean status;
	
	public Integer getId() {
		return id;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public LocalDateTime getCreated_date() {
		return created_date;
	}

	public void setCreated_date(LocalDateTime created_date) {
		this.created_date = created_date;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public LocalDateTime getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(LocalDateTime updated_date) {
		this.updated_date = updated_date;
	}

	public String getUpdated_by() {
		return updated_by;
	}

	public void setUpdated_by(String updated_by) {
		this.updated_by = updated_by;
	}
	
	
	

	
	
}
