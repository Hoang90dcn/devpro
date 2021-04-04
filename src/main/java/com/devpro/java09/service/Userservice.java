package com.devpro.java09.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.java09.entity.UserEntity;

@Service
public class Userservice {
	@PersistenceContext protected EntityManager entityManager;

	public UserEntity loadUserByUsername(String userName) {
		try {
			String jpql = "From UserEntity u Where u.email='"+userName+"'";
			Query query = entityManager.createQuery(jpql, UserEntity.class);
			return (UserEntity) query.getResultList().get(0);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
