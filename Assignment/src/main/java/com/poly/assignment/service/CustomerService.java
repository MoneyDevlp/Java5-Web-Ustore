package com.poly.assignment.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.poly.assignment.domain.Customer;

public interface CustomerService {

	<S extends Customer> List<S> findAll(Example<S> example, Sort sort);

	Customer getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Customer> entities);

	Customer getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Customer entity);

	void deleteById(Long id);

	long count();

	<S extends Customer> boolean exists(Example<S> example);

	void deleteInBatch(Iterable<Customer> entities);

	<S extends Customer> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Customer> List<S> saveAll(Iterable<S> entities);

	Optional<Customer> findById(Long id);

	List<Customer> findAllById(Iterable<Long> ids);

	List<Customer> findAll(Sort sort);

	List<Customer> findAll();

	Page<Customer> findAll(Pageable pageable);

	<S extends Customer> S save(S entity);

	Page<Customer> findByNameContaining(String name, Pageable pageable);

	List<Customer> findByNameContaining(String name);
	
	public Customer findByUsername(String username);

	Customer findByName(String name);

}
