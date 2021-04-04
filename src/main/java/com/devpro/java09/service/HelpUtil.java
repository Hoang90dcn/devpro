package com.devpro.java09.service;

import java.math.BigInteger;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

@Service
public class HelpUtil {
	@PersistenceContext protected EntityManager entityManager;
	
	public BigInteger getIdOder() {
		String sql = "select LAST_INSERT_ID() as id";
		Query query = entityManager.createNativeQuery(sql);
		return (BigInteger) query.getResultList().get(0);
	}

}
