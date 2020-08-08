package com.devpro.java09.controller.Web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.java09.entity.CategoriesEntity;
import com.devpro.java09.service.MenuService;

public abstract class ControllerBasic {

	@Autowired MenuService menu;
	
	@ModelAttribute("categories")
	public List<CategoriesEntity> findAll()
	{
		
		ArrayList<CategoriesEntity> list = (ArrayList<CategoriesEntity>) menu.findDefaultName();
		return list;
	}
	
	
}
