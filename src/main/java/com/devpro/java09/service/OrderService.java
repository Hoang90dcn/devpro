package com.devpro.java09.service;

import java.math.BigInteger;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

@Service
public class OrderService {
	@PersistenceContext protected EntityManager entityManager;
	public BigInteger countOrderByIdUser (Integer id) {
		String sql = "select count(*) from tbl_oder where  id_user =  ?1  group by id_user;";
		Query query  = entityManager.createNativeQuery(sql).setParameter(1, id);
		if(query.getResultList().size()==0)
		{
			return new BigInteger("0");
		}
		return (BigInteger) query.getResultList().get(0);
		
	}

}
