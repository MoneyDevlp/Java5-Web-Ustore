package com.poly.assignment.controller.admin;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.poly.assignment.domain.Customer;
import com.poly.assignment.model.CustomerDto;
import com.poly.assignment.service.CustomerService;

@Controller
@RequestMapping("admin/customers")
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	@GetMapping("add")
	public String add(Model model) {
		model.addAttribute("customer", new CustomerDto());
		return "views/addOrEditCustomer";
	}
	@GetMapping("edit/{customerId}")
	public ModelAndView edit(ModelMap model, @PathVariable("customerId") Long customerId) {
		Optional<Customer> option = customerService.findById(customerId);
		CustomerDto dto = new CustomerDto();
		if(option.isPresent()) {
			Customer entity = option.get();
			BeanUtils.copyProperties(entity, dto);
			dto.setIsEdit(true);
			model.addAttribute("customer", dto);
			return new ModelAndView("views/addOrEditCustomer",model);
		}
		model.addAttribute("message", "Customer is not existed");
		return new ModelAndView("redirect:/admin/customers",model);
	}
	@GetMapping("delete/{customerId}")
	public ModelAndView delete(ModelMap model, @PathVariable("customerId") Long customerId) {
		customerService.deleteById(customerId);
		model.addAttribute("message", "Customer is deleted");
		return new ModelAndView("forward:/admin/customers",model);
	}
	@PostMapping("saveOrUpdate")
	public ModelAndView saveOrUpdate(ModelMap model, @Valid @ModelAttribute("customer") CustomerDto dto,
			BindingResult result) {
		if(result.hasErrors()) {
			return new ModelAndView("views/addOrEditCustomer");
		}
		Customer entity = new Customer();
		BeanUtils.copyProperties(dto, entity);
		customerService.save(entity);
		model.addAttribute("message", "Customer is saved!");
		return new ModelAndView("forward:/admin/customers",model);
	}
	@RequestMapping("")
	public String list(ModelMap model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Customer> list = customerService.findAll(pageable);
		model.addAttribute("customers", list);
		return "views/listCustomer";
	}
	@GetMapping("search")
	public String search(ModelMap model, @RequestParam(name = "name" , required = false) String name,
			@RequestParam("p") Optional<Integer> p) {
		Page<Customer> list = null;
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		if(StringUtils.hasText(name)) {
			list = customerService.findByNameContaining(name, pageable);
		}
		else {
			list = customerService.findAll(pageable);
		}
		model.addAttribute("customers", list);
		return "views/listCustomer";
	}
}
