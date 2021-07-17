package com.poly.assignment.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.poly.assignment.domain.Customer;
@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long>{
	Page<Customer> findByNameContaining(String name, Pageable pageable);
	List<Customer> findByNameContaining(String name);
	Customer findByName(String name);
}
