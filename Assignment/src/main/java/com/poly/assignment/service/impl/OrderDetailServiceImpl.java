package com.poly.assignment.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.assignment.domain.Order;
import com.poly.assignment.domain.OrderDetail;
import com.poly.assignment.repository.OrderDetailRepository;
import com.poly.assignment.service.OrderDetailService;
@Service
public class OrderDetailServiceImpl implements OrderDetailService{
	@Autowired
	OrderDetailRepository orderDetailRepository;

	public OrderDetailServiceImpl(OrderDetailRepository orderDetailRepository) {
		this.orderDetailRepository = orderDetailRepository;
	}

	@Override
	public <S extends OrderDetail> S save(S entity) {
		return orderDetailRepository.save(entity);
	}

	@Override
	public Optional<OrderDetail> findById(Long id) {
		return orderDetailRepository.findById(id);
	}

	@Override
	public void delete(OrderDetail entity) {
		orderDetailRepository.delete(entity);
	}

	@Override
	public List<OrderDetail> findAll() {
		return orderDetailRepository.findAll();
	}

	@Override
	public List<OrderDetail> findByOrder(Order order) {
		return orderDetailRepository.findByOrder(order);
	}
	
	
}
