package com.devpro.java09.entity;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class DetaliOderId implements Serializable {

	private static final long serialVersionUID = 8717746029478610638L;

	@Column(name = "id_oder")
	private Integer oder_ID;

	@Column(name = "id_producst")
	private Integer product_ID;
	
	
	
	

	public DetaliOderId() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DetaliOderId(Integer oder_ID, Integer product_ID) {
		this.oder_ID = oder_ID;
		this.product_ID = product_ID;
	}

	public Integer getOder_ID() {
		return oder_ID;
	}

	public void setOder_ID(Integer oder_ID) {
		this.oder_ID = oder_ID;
	}

	public Integer getProduct_ID() {
		return product_ID;
	}

	public void setProduct_ID(Integer product_ID) {
		this.product_ID = product_ID;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		DetaliOderId that = (DetaliOderId) o;

		return oder_ID.equals(that.getOder_ID()) && product_ID.equals(that.getProduct_ID());

	}

	@Override
	public int hashCode() {

		return Objects.hash(oder_ID, product_ID);
	}
	
	

}
