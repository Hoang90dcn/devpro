package com.devpro.java09.repository;

import com.devpro.java09.entity.Roles;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepo extends JpaRepository<Roles, Integer> {
	

}
