package com.devpro.java09.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_revenue")
public class RevenueEntity extends BasicEntity {
	
	@Column(name = "month")
	private String month;
	
	
	@Column(name = "revenue")
	private BigDecimal revenue;

	@Column(name = "years")
	private LocalDateTime years;
	
	public String getMonth() {
		return month;
	}


	public void setMonth(String month) {
		this.month = month;
	}


	public BigDecimal getRevenue() {
		return revenue;
	}


	public void setRevenue(BigDecimal revenue) {
		this.revenue = revenue;
	}


	public LocalDateTime getYears() {
		return years;
	}


	public void setYears(LocalDateTime years) {
		this.years = years;
	}
	
	
	
	
	
	
	

}
