package com.devpro.java09.controller.Admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java09.entity.UserEntity;
import com.devpro.java09.repository.RoleRepo;
import com.devpro.java09.repository.UserRepo;
import com.devpro.java09.service.OrderService;

@Controller
@RequestMapping("/admin")
public class ListUserController {
	
	@Autowired UserRepo userRepo;
	@Autowired RoleRepo roleRepo;
	@Autowired OrderService orderService;
	
	@RequestMapping(value = {  "/listUser" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		 
		model.addAttribute("users", userRepo.findAll());
		return "Admin/listUsers";
	}
	@RequestMapping(value = {  "/detail-user/{id}" }, method = RequestMethod.GET)
	public String detailUser(@PathVariable Integer id ,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		UserEntity userEntity =userRepo.findById(id).get();
		 
		model.addAttribute("uses", userEntity);
		model.addAttribute("roles", roleRepo.findById(userEntity.getRole().get(0).getId()).get());
		model.addAttribute("count",orderService.countOrderByIdUser(id) );
		System.out.println(orderService.countOrderByIdUser(id));
		return "Admin/user/DetailUser";
	}
}
