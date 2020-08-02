package com.devpro.java09.controller.Web;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java09.dto.AjaxResponse;
import com.devpro.java09.dto.Cart;
import com.devpro.java09.dto.CartItem;
import com.devpro.java09.entity.ProductEntity;
import com.devpro.java09.repository.ProductRepo;

@Controller
@RequestMapping("/cart")
public class CartController extends ControllerBasic {
	
	
	@Autowired ProductRepo product;

	@RequestMapping(value = { "/check-out" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		return "Web/cart";
	}

	
	
	
	
	
	
	@PostMapping(value = "/add-item")
	public ResponseEntity<AjaxResponse> subscribe(@RequestBody CartItem data, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {
		  HttpSession httpSession = request.getSession();
		  httpSession.setAttribute("cart",null);
		  double dataPrice =Double.parseDouble(data.getPrice().toString());// giá của sản phẩm mới được chọn
		  
		  double totalMoneydata = dataPrice*data.getQuantity();// tổng tiền của sản phẩm mới được chọn
		  
		  Cart cart = null; 
		 
		  if(httpSession.getAttribute("GIO_HANG")!=null) { 
			  cart = (Cart) httpSession.getAttribute("GIO_HANG");
		  } 
		  else 
		  { 
			  cart = new Cart(); 
			  httpSession.setAttribute("GIO_HANG", cart); 
		  }
		  boolean check = false; 
		  for(CartItem item : cart.getList()) 
		  {
			  if(item.getProductId() ==  data.getProductId()) {
				  item.setQuantity(item.getQuantity()+data.getQuantity());
				  
				 
				  check = true; 
				  break;
			  } 
		  }
		  	
		  if(!check) {
			  ProductEntity dataProduct = product.findById(data.getProductId()).get();
			  data.setProductName(dataProduct.getName_product());
			  data.setAvatar(dataProduct.getAvatar());
			  cart.getList().add(data);
			  httpSession.setAttribute("cart", cart.getList().size());
		  	
		  }
		  System.out.println(cart.getList().get(0).getQuantity());
		  cart.setTatol(cart.getTatol()+totalMoneydata);
		
		return ResponseEntity.ok(new AjaxResponse(String.valueOf(cart.getList().size()), 500));
	}
	
	
	@RequestMapping(value = { "/delete-item-incart/{id}" }, method = RequestMethod.GET)
	public void editCart(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable long id)
			throws IOException {
		HttpSession  httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("GIO_HANG");
		for(CartItem item : cart.getList())
		{
			if(item.getProductId() == id)
			{
				cart.getList().remove(item);
				break;
			}
		}
		response.sendRedirect("/cart/check-out");
		
	}
}
// hello
