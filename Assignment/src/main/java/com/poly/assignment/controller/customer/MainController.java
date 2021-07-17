package com.poly.assignment.controller.customer;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.poly.assignment.domain.Product;
import com.poly.assignment.service.ProductService;


@Controller
public class MainController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/homeUser")
	public String homePage(Model model) {
		List<Product> list = productService.findAll();
		model.addAttribute("products", list);
		return "user/views/home";
	}
	
}
