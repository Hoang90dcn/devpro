package com.devpro.java09.controller.Web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java09.repository.NewsRepo;

@Controller
public class NewsController extends ControllerBasic{
	@Autowired NewsRepo newRepo;
	
	@RequestMapping(value = "/news/{id}", method = RequestMethod.GET)
	public String requestNews(@PathVariable Integer id ,final ModelMap model) {
		model.addAttribute("model", newRepo.findById(id).get());
		return "Web/news/indexNews";
	}


}
