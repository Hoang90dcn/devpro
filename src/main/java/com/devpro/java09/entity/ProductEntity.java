package com.devpro.java09.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.NaturalIdCache;

@Entity
@Table(name = "tbl_product")
@NaturalIdCache
public class ProductEntity extends BasicEntity {
	
	@Column(name = "name_product", length = 200)
	private String name_product;
	
	@Column(name = "price", precision = 10, scale = 2)
	private BigDecimal price;
	
	@Column(name = "avatar", length = 300)
	private String avatar;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id" ) // tên field khoá ngoại
	private CategoriesEntity category;
	
	@Column (name = "description", columnDefinition = "TEXT")
	private String description;
	
	@Column (name = "short_decription", columnDefinition = "TEXT")
	private String short_decription;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "product", fetch = FetchType.LAZY)
	List<ImageEntity> listImage = new ArrayList<ImageEntity>();
	
	/*
	 * @OneToMany(cascade = CascadeType.ALL, mappedBy = "producst", fetch =
	 * FetchType.LAZY) List<DetailOder> detailOders = new ArrayList<DetailOder>();
	 */
	/*
	 * public void addDetailOder(DetailOder detailOder) {
	 * detailOders.add(detailOder); detailOder.setProducst(this); }
	 */
	/*
	 * public void removeDetailOder(DetailOder detailOder) {
	 * detailOders.remove(detailOder); detailOder.setProducst(null); }
	 */
	
	public void addImgae(ImageEntity image) {
		listImage.add(image);
		image.setProduct(this);
	}
	public void removeImage(ImageEntity image) {
		listImage.remove(image);
		image.setProduct(null);
	}
	public String getName_product() {
		return name_product;
	}

	public void setName_product(String name_product) {
		this.name_product = name_product;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public CategoriesEntity getCategory() {
		return category;
	}

	public void setCategory(CategoriesEntity category) {
		this.category = category;
	}
	public String getShort_decription() {
		return short_decription;
	}
	public void setShort_decription(String short_decription) {
		this.short_decription = short_decription;
	}
	
	
}
