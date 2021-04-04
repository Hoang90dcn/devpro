package com.devpro.java09.controller.Web;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
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
import com.devpro.java09.entity.DetailOder;
import com.devpro.java09.entity.OderEntity;
import com.devpro.java09.entity.ProductEntity;
import com.devpro.java09.entity.UserEntity;
import com.devpro.java09.repository.DetailOderRepo;
import com.devpro.java09.repository.OderRepo;
import com.devpro.java09.repository.ProductRepo;
import com.devpro.java09.service.HelpUtil;

@Controller
@RequestMapping("/cart")
public class CartController extends ControllerBasic {
	
	
	@Autowired ProductRepo product;
	@Autowired DetailOderRepo detaiRepo;
	@Autowired OderRepo oderRepo;
	@Autowired HelpUtil heplRepo;
	
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
				cart.setTatol(cart.getTatol() - item.getQuantity()*item.getPrice().doubleValue());
				cart.getList().remove(item);
				
				break;
			}
			
		}
		httpSession.setAttribute("GIO_HANG",cart);
		httpSession.setAttribute("cart", cart.getList().size());
		response.sendRedirect("/cart/check-out");
		
	}
	@RequestMapping(value = "/save-cart", method = RequestMethod.GET)
	public void saveCart(final ModelMap model, final HttpServletResponse response, final HttpServletRequest request) throws IOException {
		HttpSession httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("GIO_HANG");
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserEntity user = (UserEntity) principal;
		
		
		  OderEntity oderEntity = new OderEntity(); 
		  oderEntity.setId_user(user.getId());
		  oderRepo.save(oderEntity);
		  BigInteger idOderCart =  heplRepo.getIdOder(); // lấy id của giỏ hàng mới được tạo 
		  oderEntity.setId(idOderCart.intValue());
		  oderEntity.setUnitPrice(new BigDecimal(cart.getTatol()));
		  
		  // trường hợp giỏ hàng đã được tạo
			if (cart.getList().size() != 0) {
				for(CartItem item : cart.getList())
				{
					ProductEntity productEntity = new ProductEntity();
					productEntity.setId(item.getProductId());
					DetailOder oder = new DetailOder(oderEntity, productEntity, item.getQuantity());
					detaiRepo.save(oder);
				}
				cart.getList().removeAll(cart.getList());
				httpSession.setAttribute("GIO_HANG", null);
				httpSession.setAttribute("cart", 0);
				response.sendRedirect("/");
			}
			// giỏ hàng chưa được tạo
			else
			{
				
			}
		
	}

}

