package com.devpro.java09.entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_detail_oder")
public class DetailOder {

	@EmbeddedId
	DetaliOderId id;// 

	@ManyToOne
	@MapsId("oder_ID")
	@JoinColumn(name = "id_oder")
	private OderEntity oder;// id của giỏ hàng

	@ManyToOne
	@MapsId("product_ID")
	@JoinColumn(name = "id_producst")
	private ProductEntity producst; // id của sản phẩm

	
	
	@Column(name = "amount")
	private Integer amount;// số lượng của sản phẩm

	
	
	public DetailOder() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DetailOder(OderEntity oder, ProductEntity producst, Integer amount) {
		this.oder = oder;
		this.producst = producst;
		this.amount = amount;
		this.id = new DetaliOderId(oder.getId(), producst.getId());
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public DetaliOderId getId() {
		return id;
	}

	public void setId(DetaliOderId id) {
		this.id = id;
	}

	public OderEntity getOder() {
		return oder;
	}

	public void setOder(OderEntity oder) {
		this.oder = oder;
	}

	public ProductEntity getProducst() {
		return producst;
	}

	public void setProducst(ProductEntity producst) {
		this.producst = producst;
	}
	

}
