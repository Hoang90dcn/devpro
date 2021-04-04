package com.devpro.java09.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.java09.entity.DetailOder;

@Service
public class DetailOderService {
	@PersistenceContext protected EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public List<DetailOder> findByIdOder(Integer id)
	{
		String jpql ="SELECT * FROM java09.tbl_detail_oder where id_oder = "+id;
		Query query = entityManager.createNativeQuery(jpql, DetailOder.class);
				
		return query.getResultList();
	}
}
