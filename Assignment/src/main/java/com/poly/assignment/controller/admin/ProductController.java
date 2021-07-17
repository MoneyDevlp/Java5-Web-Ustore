package com.poly.assignment.controller.admin;




import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;


import javax.servlet.ServletContext;
import javax.validation.Valid;


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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.poly.assignment.domain.Category;
import com.poly.assignment.domain.Product;
import com.poly.assignment.domain.Report;
import com.poly.assignment.service.CategoryService;
import com.poly.assignment.service.ParamService;
import com.poly.assignment.service.ProductService;

@Controller
@RequestMapping("admin/products")
public class ProductController {
	
	@Autowired
	ProductService productService;
	@Autowired
	ServletContext application;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ParamService paramService;
	
	@GetMapping("add")
	public String add(Model model) {
		model.addAttribute("product", new Product());
		return "views/addOrEditProduct";
	}
	@GetMapping("edit/{productId}")
	public ModelAndView edit(ModelMap model, @PathVariable("productId") Long productId) {
		Optional<Product> option = productService.findById(productId);
		if(option.isPresent()) {
			Product entity = option.get();
			model.addAttribute("product", entity);
			return new ModelAndView("views/addOrEditProduct",model);
		}
		model.addAttribute("message", "Category is not existed");
		return new ModelAndView("redirect:/admin/products",model);
	}
	@GetMapping("delete/{productId}")
	public ModelAndView delete(ModelMap model,@PathVariable("productId") Long productId) {
		productService.deleteById(productId);
		model.addAttribute("message", "Category is deleted!");
		return new ModelAndView("forward:/admin/products",model);
	}
	@PostMapping("saveOrUpdate")
	public ModelAndView saveOrUpdate(ModelMap model, @Valid @ModelAttribute("product") Product pro,
			BindingResult result, @RequestParam("img") MultipartFile multipartFile){
		if(result.hasErrors()) {
			return new ModelAndView("views/addOrEditProduct");
		}
		String upload = "/img/";
		pro.setImage(multipartFile.getOriginalFilename());
//		Product entity = new Product();
//		BeanUtils.copyProperties(dto, entity);
		productService.save(pro);
		paramService.save(multipartFile, upload);
		model.addAttribute("message", "Product is saved!");
		return new ModelAndView("forward:/admin/products",model);
	}
	@RequestMapping("")
	public String list(Model model,@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 3);
		Page<Product> list = productService.findAll(pageable);
		model.addAttribute("products", list);
		return "views/listProduct";
	}
	@GetMapping("search")
	public String search(ModelMap model,@RequestParam(name = "name", required = false) String name,
			@RequestParam("p") Optional<Integer> p) {
		Page<Product> list = null;
		Pageable pageable = PageRequest.of(p.orElse(0), 3);
		if(StringUtils.hasText(name)) {
			list = productService.findByNameContaining(name, pageable);
		}
		else {
			list = productService.findAll(pageable);
		}
		model.addAttribute("products", list);
		return "views/listProduct";
	}
	
	@ModelAttribute("categories")
	public Map<Long, String> listCategories(){
		Map<Long, String> map = new HashMap<>();
		for(Category category: categoryService.findAll()) {
			map.put(category.getCategoryId(), category.getName());
		}
		return map;
	}
	
//	@GetMapping("/report")
//	public String inventory(Model model) {
//		List<Report> items = productService.getInventoryByCategory();
//		model.addAttribute("items", items);
//		return "views/report";
//	}
	
}
