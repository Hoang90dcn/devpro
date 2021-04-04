package com.devpro.java09.controller.Admin.Cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java09.entity.DetailOder;
import com.devpro.java09.entity.OderEntity;
import com.devpro.java09.entity.ProductEntity;
import com.devpro.java09.repository.DetailOderRepo;
import com.devpro.java09.repository.OderRepo;
import com.devpro.java09.repository.ProductRepo;
import com.devpro.java09.repository.UserRepo;
import com.devpro.java09.service.DetailOderService;

@Controller
@RequestMapping(value = "/admin")
public class OderController {

	@Autowired OderRepo oderRepo;
	@Autowired UserRepo userRepo;
	@Autowired DetailOderRepo detailOderRepo;
	@Autowired DetailOderService detailService;
	@Autowired ProductRepo productRepo;
	
	
	@RequestMapping(value = "/list-cart", method = RequestMethod.GET)
	public String listOder (final ModelMap modelMap) {
		modelMap.addAttribute("oders", oderRepo.findAll());
		return "Admin/cart/listCart";
	}

	@RequestMapping(value = "/oder-detail/{id}", method = RequestMethod.GET)
	public String oderdetail(@PathVariable Integer id, final ModelMap modelMap) {
		OderEntity oderEntity = new OderEntity();
				oderEntity = oderRepo.findById(id).get();
		
		List<DetailOder>listDetail = new ArrayList<DetailOder>();
		listDetail = detailService.findByIdOder(id);
		System.out.println(listDetail.size());
		HashMap<ProductEntity, Integer> listProduct = new HashMap<ProductEntity, Integer>();
		modelMap.addAttribute("user",  userRepo.findById(oderEntity.getId_user()).get());
		modelMap.addAttribute("oder", oderEntity);
		for(DetailOder item : listDetail)
		{
			listProduct.put(productRepo.findById(item.getProducst().getId()).get(), item.getAmount());
		}
		modelMap.addAttribute("product",listProduct );
		System.out.println(listProduct.size());
		return "Admin/cart/DetailOder";
	}

	


}
