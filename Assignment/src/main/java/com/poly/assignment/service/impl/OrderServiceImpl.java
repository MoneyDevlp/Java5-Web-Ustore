package com.poly.assignment.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.assignment.domain.Order;
import com.poly.assignment.domain.OrderDetail;
import com.poly.assignment.repository.OrderDetailRepository;
import com.poly.assignment.repository.OrderRepository;
import com.poly.assignment.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderRepository orderRepository;
	@Autowired
	OrderDetailRepository orderDetailRepository;

	public OrderServiceImpl(OrderRepository orderRepository) {
		this.orderRepository = orderRepository;
	}

	@Override
	public <S extends Order> S save(S entity) {
		return orderRepository.save(entity);
	}

	@Override
	public List<Order> findAll() {
		return orderRepository.findAll();
	}

	@Override
	public Optional<Order> findById(Long id) {
		return orderRepository.findById(id);
	}

	@Override
	public void deleteById(Long id) {
		orderRepository.deleteById(id);
	}

	@Override
	public void delete(Order entity) {
		orderRepository.delete(entity);
	}

	@Override
	public void deleteAll() {
		orderRepository.deleteAll();
	}

	@Override
	public Order getById(Long id) {
		return orderRepository.getById(id);
	}
	
	@Override
	public void create(Order order, List<OrderDetail> details) {
		orderRepository.save(order);
		for(OrderDetail detail : details) {
			orderDetailRepository.save(detail);
		}
	}
	
	
}
