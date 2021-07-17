package com.poly.assignment.controller.customer;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.assignment.domain.CartItem;
import com.poly.assignment.domain.Product;
import com.poly.assignment.service.CartService;
import com.poly.assignment.service.ProductService;
import com.poly.assignment.service.SessionService;

@Controller
public class CartController {
	
	@Autowired
	ProductService productService;
	@Autowired
	CartService cartService;
	@Autowired
	SessionService session;
	@RequestMapping("/cart")
	public String singleProduct(Model model) {
		Collection<CartItem> items = cartService.getItems();
		model.addAttribute("cartItems", items);
		model.addAttribute("total", cartService.getAmount());
//		model.addAttribute("products", list);
		return "user/views/cart";
	}
	
	@RequestMapping("add/{productId}")
	public String add(@PathVariable("productId") Long productId) {
		if(session.get("userLogin") != null) {
			Optional<Product> pro = productService.findById(productId);
			if(pro.isPresent()) {
				Product entity = pro.get();
				CartItem item = new CartItem();
				item.setProductId(entity.getProductId());
				item.setName(entity.getName());
				item.setUnitPrice(entity.getUnitPrice());
				item.setImage(entity.getImage());
				item.setQuantity(1);
				cartService.add(item);
			}
			return "redirect:/cart";
		}
		return "user/views/login";
		
	}
	@RequestMapping("delete/{productId}")
	public String delete(@PathVariable("productId") Long productId) {
		cartService.remove(productId);
		return "redirect:/cart";
	}
	
	@PostMapping("update")
	public String update(Model model,@RequestParam("productId") Long productId, @RequestParam("quantity") Integer quantity) {
		cartService.update(productId, quantity);
		return "redirect:/cart";
	}
	
	
}
