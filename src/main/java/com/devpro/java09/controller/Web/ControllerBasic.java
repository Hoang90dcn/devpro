package com.devpro.java09.controller.Web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.java09.entity.CategoriesEntity;
import com.devpro.java09.service.MenuService;

public abstract class ControllerBasic {

	@Autowired MenuService menu;
	
	@ModelAttribute("categories")
	public Map<String, ArrayList<CategoriesEntity>> findAll()
	{
		Map<String, ArrayList<CategoriesEntity>> list1 = new HashMap<String, ArrayList<CategoriesEntity>>();
		
		  ArrayList<CategoriesEntity> list = (ArrayList<CategoriesEntity>)
		  menu.findDefaultName(15); for(CategoriesEntity item : list) {
		  
		  list1.put(item.getName_categories(), (ArrayList<CategoriesEntity>)
		  menu.findDefaultName(item.getId())); }
		 
		
		return list1;
	}
	
	
}
