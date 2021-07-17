package com.poly.assignment.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.assignment.domain.Account;
import com.poly.assignment.domain.Report;
import com.poly.assignment.model.AccountDto;
import com.poly.assignment.service.AccountService;
import com.poly.assignment.service.ProductService;
import com.poly.assignment.service.SessionService;

@Controller
public class LoginController {
	@Autowired
	SessionService service;
	@Autowired
	AccountService accountService;
	@Autowired
	HttpSession session;
	@Autowired
	ProductService productService;
	@RequestMapping("/homeAdmin")
	public String homeAdmin(Model model) {
		if(service.get("adminLogin") != null) {
			List<Report> items = productService.getInventoryByCategory();
			model.addAttribute("items", items);
			return "views/home";
		}
		return "views/login";
	}
	
	@GetMapping("/loginAdmin")
	public String loginAdmin() {
		return "views/login";
	}
	
	@PostMapping("/loginAdmin")
	public String loginAdmin(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		try {
			Account account = accountService.findByUsername(username);
			if(!account.getPassword().equals(password)) {
				model.addAttribute("message", "Password is invalid");
			}
			else {
				session.setAttribute("adminLogin", username);
				String uri = service.get("security-uri");
				if(uri != null) {
					return "redirect:" + uri;
				}
				else {
					model.addAttribute("message", "Login successfully!!!");
					return "redirect:/homeAdmin";
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Username is invalid");
		}
		return "views/login";
}
	@RequestMapping("/logout")
	public String logout() {
		session.removeAttribute("adminLogin");
		return "views/login";
	}
}
