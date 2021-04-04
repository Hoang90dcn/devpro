package com.devpro.java09.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.java09.entity.ProductEntity;

@Service
public class ProductService {
	@PersistenceContext protected EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public List<ProductEntity> findAllByCategory(Integer id)
	{
		String sql  = "select * from tbl_product where category_id = "+id;
		Query query = entityManager.createNativeQuery(sql,ProductEntity.class);
		
		return query.getResultList();
	}
	@SuppressWarnings("unchecked")
	public List<ProductEntity> findRecord(int id, int limit)
	{
		String sql ="SELECT * FROM java09.tbl_product where category_id = ?1" + 
				"order by  created_date desc limit ?2 ";
		Query query = entityManager.createNativeQuery(sql,ProductEntity.class).setParameter(1,id).
				setParameter(2, limit);
		return query.getResultList();
	}

}
