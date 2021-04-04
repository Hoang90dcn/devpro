package com.devpro.java09.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_advertisements")
public class AdvertisementEntity  extends BasicEntity {
	
	
	  @Column(name = "code") private String code;
	  
	  
	  @Column(name = "linkAvatar") private String linkAvatar;
	  
	  
	  public String getCode() { return code; }
	  
	  
	  public void setCode(String code) { this.code = code; }
	  
	  
	  public String getLinkAvatar() { return linkAvatar; }
	  
	  
	  public void setLinkAvatar(String linkAvatar) { this.linkAvatar = linkAvatar;
	  }
	 

}
