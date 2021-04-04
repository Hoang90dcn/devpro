package com.devpro.java09.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.java09.entity.UserEntity;

public interface UserRepo extends JpaRepository<UserEntity, Integer> {
	
	

}
