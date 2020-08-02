package com.devpro.java09.dto;

import java.math.BigDecimal;
import java.util.ArrayList;

import java.util.List;

public class Cart {
	
	List<CartItem> list = new ArrayList<CartItem>();
	
	private BigDecimal tatol = new BigDecimal(0);

	

	public List<CartItem> getList() {
		return list;
	}

	public void setList(List<CartItem> list) {
		this.list = list;
	}

	public double getTatol() {
		
		
		
		return Double.parseDouble(tatol.toString());
	}

	public void setTatol(double tatol) {
		this.tatol = BigDecimal.valueOf(tatol);
	}

	
	
	
	
	
}
