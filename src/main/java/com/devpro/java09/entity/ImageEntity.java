package com.devpro.java09.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table( name = "tbl_image")
public class ImageEntity extends BasicEntity {
	
	@Column(name = "link")
	private String link;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn (name = "product_id")
	ProductEntity product;
	

	public ProductEntity getProduct() {
		return product;
	}

	public void setProduct(ProductEntity product) {
		this.product = product;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	

	
	
	

}
