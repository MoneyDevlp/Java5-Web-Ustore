package com.poly.assignment.controller.customer;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.assignment.domain.Product;
import com.poly.assignment.service.ProductService;

@Controller
public class ShoppingController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("/shop")
	public String shop(Model model,@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> list = productService.findAll(pageable);
		model.addAttribute("products", list);
		return "user/views/shop";
	}
	
	@RequestMapping("/search")
	public String search(Model model, @RequestParam(name = "name", required = false) String name,
			@RequestParam("p") Optional<Integer> p) {
		Page<Product> list = null;
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		if(StringUtils.hasText(name)) {
			list = productService.findByNameContaining(name, pageable);
		}
		else {
			list = productService.findAll(pageable);
		}
		model.addAttribute("products", list);
		return "user/views/shop";
	}
	@RequestMapping("edit/{productId}")
	public String edit(Model model, @PathVariable("productId") Long productId) {
		Optional<Product> option = productService.findById(productId);
		if(option.isPresent()) {
			Product entity = option.get();
			List<Product> list = productService.findAll();
			model.addAttribute("products", list);
			model.addAttribute("product", entity);
			return "user/views/singleProduct";
		}
		return "user/views/shop";
	}
	
}
