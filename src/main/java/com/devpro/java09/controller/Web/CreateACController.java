package com.devpro.java09.controller.Web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java09.dto.Account;

@Controller
public class CreateACController extends ControllerBasic {
	
	  @RequestMapping(value = { "/createAC" }, method = RequestMethod.GET) public
	  String index(final ModelMap model, final HttpServletRequest request, final
	  HttpServletResponse response) throws IOException { 
		 Account ac = new Account();
	model.addAttribute("ac",ac);
	  return "Web/createAC"; // tên của file jsp trong thư mục view }
	  }
	  
	  @RequestMapping(value = {"/save-ac"}, method = RequestMethod.POST)
		public String saveAc(@ModelAttribute("ac") Account ac
				, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
			System.out.println(ac.getEmail() + " " + ac.getPass());
			return "Web/createAC";
			
		}
	 
}
