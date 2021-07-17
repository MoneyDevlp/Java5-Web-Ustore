package com.poly.assignment.controller.admin;

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

import com.poly.assignment.domain.Account;
import com.poly.assignment.model.AccountDto;
import com.poly.assignment.service.AccountService;

@Controller
@RequestMapping("admin/accounts")
public class AdminController {
	
	@Autowired
	AccountService accountService;
	
	@GetMapping("add")
	public String add(Model model) {
		model.addAttribute("account", new AccountDto());
		return "views/addOrEditAccount";
	}
	@GetMapping("edit/{accountId}")
	public ModelAndView edit(ModelMap model, @PathVariable("accountId") Long accountId) {
		Optional<Account> option = accountService.findById(accountId);
		AccountDto dto = new AccountDto();
		if(option.isPresent()) {
			Account entity = option.get();
			BeanUtils.copyProperties(entity, dto);
			dto.setIsEdit(true);
			model.addAttribute("account", dto);
			return new ModelAndView("views/addOrEditAccount",model);
		}
		model.addAttribute("message", "Account is not existed");
		return new ModelAndView("redirect:/admin/accounts",model);
	}
	@GetMapping("delete/{accountId}")
	public ModelAndView delete(ModelMap model, @PathVariable("accountId") Long accountId) {
		accountService.deleteById(accountId);
		model.addAttribute("message", "Account is deleted!");
		return new ModelAndView("forward:/admin/accounts",model);
	}
	@PostMapping("saveOrUpdate")
	public ModelAndView saveOrUpdate(ModelMap model, @Valid @ModelAttribute("account") AccountDto dto,
			BindingResult result) {
		if(result.hasErrors()) {
			return new ModelAndView("views/addOrEditAccount",model);
		}
		Account entity = new Account();
		BeanUtils.copyProperties(dto, entity);
		accountService.save(entity);
		model.addAttribute("message", "Account is saved!");
		return new ModelAndView("forward:/admin/accounts",model);
	}
	@RequestMapping("")
	public String list(ModelMap model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Account> list = accountService.findAll(pageable);
		model.addAttribute("accounts", list);
		return "views/listAccount";
	}
	@GetMapping("search")
	public String search(ModelMap model, @RequestParam(name = "name" , required = false) String name,
			@RequestParam("p") Optional<Integer> p) {
		Page<Account> list = null;
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		if(StringUtils.hasText(name)){
			list = accountService.findByUsernameContaining(name, pageable);
		}
		else {
			list = accountService.findAll(pageable);
		}
		model.addAttribute("accounts", list);
		return "views/listAccount";
	}
	
}
