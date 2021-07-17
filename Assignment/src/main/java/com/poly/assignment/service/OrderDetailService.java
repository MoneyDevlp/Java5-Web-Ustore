package com.poly.assignment.service;

import java.util.List;
import java.util.Optional;

import com.poly.assignment.domain.Order;
import com.poly.assignment.domain.OrderDetail;

public interface OrderDetailService {

	void delete(OrderDetail entity);

	<S extends OrderDetail> S save(S entity);

	Optional<OrderDetail> findById(Long id);

	List<OrderDetail> findAll();

	List<OrderDetail> findByOrder(Order order);

//	List<OrderDetail> findByOrder(Order order);

}
