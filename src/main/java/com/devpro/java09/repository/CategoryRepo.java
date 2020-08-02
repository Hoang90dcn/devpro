package com.devpro.java09.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.java09.entity.CategoriesEntity;

@Repository
public interface CategoryRepo extends JpaRepository<CategoriesEntity, Integer>{
	

}
