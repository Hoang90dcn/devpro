package com.devpro.java09.controller.Web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java09.repository.ProductRepo;
import com.devpro.java09.service.ProductService;

@Controller
public class ChiTietController extends ControllerBasic{
	
	
	
	
	
	@Autowired ProductService product;
	@Autowired ProductRepo productRepo;
	
	
	@RequestMapping(value = { "/chitiet/{id}" }, method = RequestMethod.GET)

	public String chiTiet(@PathVariable("id") Integer id, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("product", productRepo.findById(id).get());
		return "Web/chiTietSP";
	}
	
	@RequestMapping(value = { "/dssp/{id}" }, method = RequestMethod.GET)

	public String dsps(@PathVariable("id") Integer id, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
			model.addAttribute("products", product.findAllByCategory(id));
		return "Web/dsSanPham";
	}
	 

}
