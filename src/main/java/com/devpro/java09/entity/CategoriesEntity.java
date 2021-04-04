package com.devpro.java09.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * @author Hoang
 *
 */
@Entity
@Table(name = "tbl_categories")
public class CategoriesEntity extends BasicEntity {
	
	
	@Column (name = "name_categories")
	private String name_categories;
	
	@OneToMany (cascade = CascadeType.ALL, mappedBy = "category", fetch = FetchType.LAZY)
	private List<ProductEntity> products = new ArrayList<ProductEntity>();
	
	
	
	public void addProduct(ProductEntity product)
	{
		products.add(product);
		product.setCategory(this);
	}
	public void removeProduct(ProductEntity product) {
		products.remove(product);
		product.setCategory(null);
	}
	
	
	public List<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(List<ProductEntity> products) {
		this.products = products;
	}

	public String getName_categories() {
		return name_categories;
	}

	public void setName_categories(String name_categories) {
		this.name_categories = name_categories;
	}

	/*
	 * @Column(name = "id_parent", columnDefinition = "INT") private Integer
	 * id_parent;
	 */

	@Column(name = "test", columnDefinition = "INT")
	private Integer test;
	
	
	


	public Integer getTest() {
		return test;
	}
	public void setTest(Integer test) {
		this.test = test;
	}
	

	
	
	
	
	

}
