package com.poly.assignment.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
	@RequestMapping("/contact")
	public String contact() {
		return "user/views/contact";
	}
}
