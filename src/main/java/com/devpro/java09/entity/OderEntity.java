package com.devpro.java09.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_oder")
public class OderEntity extends BasicEntity {
	
	@Column(name = "id_user")
	private int id_user;
	
	@Column(name = "unitPrice", precision = 10, scale = 2)
	private BigDecimal unitPrice;

	
	/*
	 * @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy =
	 * "oder") List<DetailOder> DetailOders = new ArrayList<DetailOder>();
	 */
	/*
	 * public void addProducInCart(DetailOder detailOder) {
	 * DetailOders.add(detailOder); detailOder.setOder(this);
	 * 
	 * 
	 * }
	 */
	/*
	 * public void remove(DetailOder detailOder) { DetailOders.remove(detailOder);
	 * detailOder.setOder(null);
	 * 
	 * }
	 */
	
	
	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public BigDecimal getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	
	
	

}
