package com.poly.assignment.service;

import java.util.List;
import java.util.Optional;

import com.poly.assignment.domain.Order;
import com.poly.assignment.domain.OrderDetail;

public interface OrderService {

	Order getById(Long id);

	void deleteAll();

	void delete(Order entity);

	void deleteById(Long id);

	Optional<Order> findById(Long id);

	List<Order> findAll();

	<S extends Order> S save(S entity);

	void create(Order order, List<OrderDetail> details);


}
