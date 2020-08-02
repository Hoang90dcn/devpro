package com.devpro.java09.controller.Web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

@Controller
public class ContactController extends ControllerBasic {
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		Contact contact = new Contact();
		//model.addAllAttribute("contact",contact);
		model.addAttribute("contact", contact);
		return "Web/contact"; // tên của file jsp trong thư mục view
	}
	@RequestMapping(value = {"/save-contact"}, method = RequestMethod.POST)
	public String saveContact(@ModelAttribute("contact") Contact contact
			, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		
		
		return "Web/contact";
	}
	
	@RequestMapping(value = { "/contact-no" }, method = RequestMethod.GET)
	public String index1(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		System.out.println("H");
		//Contact contact = new Contact();
		//model.addAllAttribute("contact",contact);
		//model.addAttribute("contact", contact);
		return "Web/no-spring-from"; // tên của file jsp trong thư mục view
	}
	
	
	@RequestMapping(value = {"/save-contact-no"}, method = RequestMethod.GET)
	public String saveContact2(
			 final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		return "Web/no-spring-from";
	}
	

	//////////// AJAX
	@PostMapping(value = "/save-contact-with-ajax")
	public ResponseEntity<AjaxResponse> subscribe(@RequestBody final Map<String, Object> data
			,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		String firstName = String.valueOf(data.get("firstName"));
		System.out.println(request.getParameter("name"));
		return ResponseEntity.ok(new AjaxResponse("Conguration! You are subscribe successful!!!", 500));
	}
	
	
}
