package com.devpro.java09.controller.Admin.News;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java09.entity.NewsEntity;
import com.devpro.java09.repository.NewsRepo;

@Controller(value = "NewscontrollerOfAdimin")
@RequestMapping("/admin")
public class NewsController {
	
	@Autowired NewsRepo newRepo;
	
	
	@RequestMapping(value = {  "/list-news" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("model", newRepo.findAll());
		return "Admin/news/listNews";
	}
	@RequestMapping(value = {  "/add-news" }, method = RequestMethod.GET)
	public String addNews(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("newsEntity", new NewsEntity());
		return "Admin/news/addNews";
	}
	@RequestMapping(value = {  "/save-news" }, method = RequestMethod.POST)
	public void saveNews(@ModelAttribute NewsEntity newsEntity ,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		LocalDateTime today = LocalDateTime.now();
		newsEntity.setCreated_date(today);
		newsEntity.setCreated_by("Hoàng");
		newRepo.save(newsEntity);
		response.sendRedirect("/admin/list-news");
	}
	
	
	
}
