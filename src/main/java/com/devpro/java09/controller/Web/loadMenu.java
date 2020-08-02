package com.devpro.java09.controller.Web;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import com.devpro.java09.entity.CategoriesEntity;
import com.devpro.java09.repository.CategoryRepo;

public class loadMenu implements HandlerInterceptor {

	@Autowired CategoryRepo category;
	
	@Override
	public  boolean preHandle(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response, Object handler) throws Exception
	{
		ArrayList<CategoriesEntity> list = (ArrayList<CategoriesEntity>) category.findAll();
		for (CategoriesEntity categoriesEntity : list) {
			System.out.println(categoriesEntity.getName_categories());
		}
		request.setAttribute("category", list);
		return true;
	}
}
