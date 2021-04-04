package com.devpro.java09.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.java09.entity.NewsEntity;

@Service
public class NewsService {
	@PersistenceContext protected EntityManager entityManager;
	
	
	@SuppressWarnings("unchecked")
	public List<NewsEntity> find6Record(int limit)
	{
		String sql ="SELECT * FROM java09.tbl_news  ORDER BY created_date DESC LIMIT ?1";
		Query query = entityManager.createNativeQuery(sql, NewsEntity.class).setParameter(1, limit);
		return query.getResultList();
		
	}
}
