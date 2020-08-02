package com.devpro.java09.entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_detail_oder" )
public class DetailOder {
	
	@EmbeddedId
	private DetaliOderId id;
	
	/*
	 * @ManyToOne(fetch = FetchType.LAZY)
	 * 
	 * @JoinColumn(name = "id_oder", nullable = false) private OderEntity oder;
	 * 
	 * 
	 * @ManyToOne(fetch = FetchType.LAZY)
	 * 
	 * @JoinColumn(name = "id_producst") private ProductEntity producst;
	 * 
	 * 
	 * @Column(name = "amount") private Integer amount;
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * public Integer getAmount() { return amount; }
	 * 
	 * 
	 * public void setAmount(Integer amount) { this.amount = amount; }
	 * 
	 * 
	 */
	
	
	

}
