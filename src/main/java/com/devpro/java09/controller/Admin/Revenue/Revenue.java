package com.devpro.java09.controller.Admin.Revenue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.devpro.java09.entity.RevenueEntity;
import com.devpro.java09.repository.RevenueRepo;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Controller
@RequestMapping("/admin")
public class Revenue {
	
	@Autowired RevenueRepo dataRepo;
	
	@RequestMapping(value = "/revenue", method = RequestMethod.GET)
	public String listOder (final ModelMap modelMap) {
		
		return "Admin/revenue/indexRevenue";
	}
	@RequestMapping(value = "/get-data", method = RequestMethod.GET)
	@ResponseBody
	public String getdata (final ModelMap modelMap) {
		java.util.List<RevenueEntity> list = dataRepo.findAll();
		JsonArray jsonMonth = new JsonArray();
		JsonArray jsonRevenue = new JsonArray();
		JsonObject json = new JsonObject();
		list.forEach(data->{
			jsonMonth.add(data.getMonth());
			jsonRevenue.add(data.getRevenue());
		});
		json.add("month", jsonMonth);
		json.add("revenue", jsonRevenue);
		return json.toString();
	}
	

}
