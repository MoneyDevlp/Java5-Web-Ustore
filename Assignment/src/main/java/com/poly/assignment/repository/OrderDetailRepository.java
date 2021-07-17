package com.poly.assignment.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.poly.assignment.domain.Order;
import com.poly.assignment.domain.OrderDetail;
@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long>{
	List<OrderDetail> findByOrder(Order order);
}
