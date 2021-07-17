package com.poly.assignment.controller.customer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.assignment.domain.Customer;
import com.poly.assignment.repository.CustomerRepository;
import com.poly.assignment.service.CustomerService;
import com.poly.assignment.service.SessionService;



@Controller
public class AccountController {
	@Autowired
    CustomerRepository customerRepository;
	@Autowired
	SessionService service;
	@Autowired
	CustomerService customerService;
	@Autowired
	HttpSession session;
	@GetMapping("/login")
	public String loginUser() {
		return "user/views/login";
	}
	
	@PostMapping("/loginUser")
	public String loginUser(Model model, @RequestParam("name") String name,
			@RequestParam("password") String password) {
		try {
			Customer customer = customerService.findByUsername(name);
			if(!customer.getPassword().equals(password)) {
				model.addAttribute("message", "Password is invalid");
			}
			else {
				session.setAttribute("userLogin", name);
				
				String uri = service.get("security-uri");
				if(uri != null) {
					return "redirect:" + uri;
				}
				else {
					model.addAttribute("message", "Login successfully!!!");
					return "redirect:/homeUser";
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Username is invalid");
		}
		return "user/views/login";
	}
	@RequestMapping("/logoutUser")
	public String logout() {
		session.removeAttribute("userLogin");
		return "user/views/login";
	}
	
}
