package com.devpro.java09.controller.Web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java09.dto.AjaxResponse;
import com.devpro.java09.dto.Contact;
import com.devpro.java09.repository.CategoryRepo;
import com.devpro.java09.repository.DetailOderRepo;
import com.devpro.java09.repository.NewsRepo;
import com.devpro.java09.service.MenuService;
import com.devpro.java09.service.NewsService;

@Controller(value = "HomecontrollerOfWeb")


public class HomeController extends ControllerBasic{
	
	
	@Autowired CategoryRepo category;
	@Autowired DetailOderRepo detaiRepo;
	@Autowired MenuService menuRepo;
	
	@Autowired NewsService newRepo;
	
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		model.addAttribute("model", newRepo.find6Record(6));
		
		
		return "Web/index"; 
	}
	
	@RequestMapping(value = {"/save-contact-home"}, method = RequestMethod.POST)
	public String saveContact(@ModelAttribute("contact") Contact contact
			, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		System.out.println(contact.getMessage());
		
		return "Web/index"; 
	}
	
	@PostMapping(value = "/save-contact-ajax-home")
	public ResponseEntity<AjaxResponse> subscribe(@RequestBody final Map<String, Object> data
			,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		//String firstName = String.valueOf(data.get("name"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("name"));
		return ResponseEntity.ok(new AjaxResponse("Conguration! You are subscribe successful!!!", 500));
	}
}
