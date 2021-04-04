package com.devpro.java09.repository;

import org.springframework.stereotype.Repository;

import com.devpro.java09.entity.OderEntity;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface OderRepo extends JpaRepository<OderEntity, Integer> {

}
