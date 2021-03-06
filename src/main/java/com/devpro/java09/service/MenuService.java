package com.devpro.java09.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.java09.entity.CategoriesEntity;

@Service
public class MenuService {
	@PersistenceContext protected EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public List<CategoriesEntity> findDefaultName(Integer id) {
		String sql = "SELECT * FROM java09.tbl_categories where test = "+id;
		Query query = entityManager.createNativeQuery(sql, CategoriesEntity.class);
		return query.getResultList();
		
	}
	
}
