package com.poly.assignment.controller.customer;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.poly.assignment.domain.CartItem;
import com.poly.assignment.domain.Customer;
import com.poly.assignment.domain.Order;
import com.poly.assignment.domain.OrderDetail;
import com.poly.assignment.domain.Product;
import com.poly.assignment.model.OrderDto;
import com.poly.assignment.repository.OrderDetailRepository;
import com.poly.assignment.repository.OrderRepository;
import com.poly.assignment.service.CartService;
import com.poly.assignment.service.CustomerService;
import com.poly.assignment.service.OrderDetailService;
import com.poly.assignment.service.OrderService;
import com.poly.assignment.service.ProductService;
import com.poly.assignment.service.SessionService;

@Controller

public class OrderController {
	@Autowired
	SessionService session;
	@Autowired
	CartService cartService;
	@Autowired
	ProductService productService;
	@Autowired
	OrderService orderService;
	@Autowired
	OrderDetailService orderDetailService;
	@Autowired
	CustomerService customerService;
	@Autowired
	HttpSession se;
	@Autowired
	OrderDetailRepository orderDetailRepository;
	@Autowired
	OrderRepository orderRepository;
	@RequestMapping("/saveOrder")
	public String save(ModelMap model) {
		Order order = new Order();
		order.setOrderDate(new Date());
//		Optional<Customer> customer = customerService.findByName((String) se.getAttribute("userLogin"));
		Customer c = customerService.findByName(session.get("userLogin", "a"));
		order.setCustomer(c);
		order.setAmount(cartService.getAmount());

		Collection<CartItem> list = cartService.getItems();
		List<OrderDetail> details = new ArrayList<OrderDetail>();
		for (CartItem cart : list) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			Product pro = new Product();
			pro.setProductId(cart.getProductId());
			orderDetail.setProduct(pro);
			orderDetail.setQuantity(cart.getQuantity());
			orderDetail.setUnitPrice(cart.getUnitPrice());
			details.add(orderDetail);
		}
		orderService.create(order, details);
		model.addAttribute("mess", "Order successfull!");
		return "user/views/cart";

	}
	
	@RequestMapping("/listOrder")
	public String listOrder(Model model) {
		List<Order> list = orderService.findAll();
		model.addAttribute("orders", list);
		return "views/listOrder";
	}
	@RequestMapping("editOrder/{orderId}")
	public ModelAndView edit(ModelMap model, @PathVariable("orderId") Long orderId) {
		Order order = orderRepository.findById(orderId).get();
		model.addAttribute("order", order);
		List<OrderDetail> detail = orderDetailRepository.findByOrder(order);
		model.addAttribute("details", detail);
		return new ModelAndView("views/listOrderDetails", model);
	}

}
