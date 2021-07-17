package com.poly.assignment.controller.customer;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.poly.assignment.domain.Customer;
import com.poly.assignment.model.CustomerDto;
import com.poly.assignment.service.CustomerService;

@Controller
@RequestMapping("user/customers")
public class RegisterController {
	
	@Autowired
	CustomerService customerService;
	
	@GetMapping("add")
	public String add(Model model) {
		model.addAttribute("customer", new CustomerDto());
		return "user/views/register";
	}
	@PostMapping("save")
	public String saveOrUpdate(ModelMap model, @Valid @ModelAttribute("customer") CustomerDto dto,
			BindingResult result) {
		if(result.hasErrors()) {
			return "user/views/register";
		}
		Customer entity = new Customer();
		BeanUtils.copyProperties(dto, entity);
		customerService.save(entity);
		model.addAttribute("message", "Customer is saved!");
		return "user/views/register";
	}
}
