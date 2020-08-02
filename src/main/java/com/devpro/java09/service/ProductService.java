package com.devpro.java09.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.java09.entity.CategoriesEntity;
import com.devpro.java09.entity.ProductEntity;

@Service
public class ProductService {
	@PersistenceContext protected EntityManager entityManager;
	
	public List<CategoriesEntity> findAllByCategory(Integer id)
	{
		String sql  = "select * from tbl_product where category_id = "+id;
		Query query = entityManager.createNativeQuery(sql,ProductEntity.class);
		
		return query.getResultList();
	}

}
