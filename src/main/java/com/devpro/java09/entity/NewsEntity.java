package com.devpro.java09.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_news")
public class NewsEntity extends BasicEntity {
	
	@Column(name = "title", columnDefinition = "TEXT")
	private String title;
	
	@Column(name = "short_description", columnDefinition = "TEXT")
	private String short_description;
	
	
	@Column(name = "paragraph_1", columnDefinition = "TEXT")
	private String paragraph_1;
	
	
	@Column(name = "paragraph_2", columnDefinition = "TEXT")
	private String paragraph_2;
	
	@Column(name = "paragraph_3", columnDefinition = "TEXT")
	private String paragraph_3;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getShort_description() {
		return short_description;
	}

	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}

	public String getParagraph_1() {
		return paragraph_1;
	}

	public void setParagraph_1(String paragraph_1) {
		this.paragraph_1 = paragraph_1;
	}

	public String getParagraph_2() {
		return paragraph_2;
	}

	public void setParagraph_2(String paragraph_2) {
		this.paragraph_2 = paragraph_2;
	}

	public String getParagraph_3() {
		return paragraph_3;
	}

	public void setParagraph_3(String paragraph_3) {
		this.paragraph_3 = paragraph_3;
	}
	
	
}
