package com.devpro.java09.controller.Admin;


import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.java09.entity.ProductEntity;
import com.devpro.java09.repository.CategoryRepo;
import com.devpro.java09.repository.ProductRepo;

@Controller
@RequestMapping("/admin")
public class ProductController {

	@Autowired
	CategoryRepo category;
	@Autowired
	ProductRepo productRepo;

	@RequestMapping(value = { "/list-products" }, method = RequestMethod.GET)
	public String listProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		model.addAttribute("products", productRepo.findAll());

		return "Admin/product/listProduct";
	}
	@RequestMapping(value = { "/add-product" }, method = RequestMethod.GET)
	public String home(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("categories", category.findAll());
		model.addAttribute("product", new ProductEntity());
		return "Admin/product/addProduct";
	}

	@RequestMapping(value = { "/save-new-product" }, method = RequestMethod.POST)
	public void saveProduct(@RequestParam("productAvatars") MultipartFile[] productAvatars,
			@ModelAttribute("product") ProductEntity pro, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {	
		
		System.out.println(pro.getId());
		LocalDateTime today = LocalDateTime.now();
		pro.setCreated_date(today);
		pro.setCreated_by("Hoàng");
		if(pro.getId()!=null)
		{
			ProductEntity productInDB = productRepo.findById(pro.getId()).get();
			if(pro.getAvatar()==null)
			{
				pro.setAvatar(productInDB.getAvatar());
			}
		}

		else
		{
			// lấy avatar
			// 1. kiểm tra người dùng có attach avatar lên không
			if (productAvatars != null && productAvatars.length > 0) {
				for (int i = 0; i < productAvatars.length; i++) {
					MultipartFile productAvatar = productAvatars[i];
					String fullPath = "C:\\Users\\Hoang\\java09blog\\upload\\products\\"
							+ productAvatar.getOriginalFilename();
					productAvatar.transferTo(new File(fullPath));
					pro.setAvatar("/products/" + productAvatar.getOriginalFilename());
				}
			}
		}
		productRepo.save(pro);
		
		response.sendRedirect("/admin/list-products");
	}
	
	@RequestMapping(value = { "/delete-product/{id}" }, method = RequestMethod.GET)
	public void  deleteProduct(@PathVariable Integer id, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		System.out.println(id);
		productRepo.deleteById(id);
		response.sendRedirect("/admin/list-products");
	}
	
	@RequestMapping(value = "/update-product/{id}", method = RequestMethod.GET)
	public String updateProduct(@PathVariable Integer id, final HttpServletResponse response, final ModelMap model)
	
			throws IOException {
		model.addAttribute("categories", category.findAll());
		model.addAttribute("product", productRepo.findById(id));
		return "Admin/product/edit-product";
	}

	
	


}
