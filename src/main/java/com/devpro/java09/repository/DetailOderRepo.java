package com.devpro.java09.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.java09.entity.DetailOder;
import com.devpro.java09.entity.DetaliOderId;

import org.springframework.stereotype.Repository;

@Repository
public interface DetailOderRepo extends JpaRepository<DetailOder, DetaliOderId> {

}
