package com.poly.assignment.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.poly.assignment.domain.Customer;
import com.poly.assignment.repository.CustomerRepository;
import com.poly.assignment.service.CustomerService;
@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	CustomerRepository customerRepository;
	@Autowired
	CustomerService customerService;
//	List<Customer> list = new ArrayList<Customer>();

	public CustomerServiceImpl(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}
	
	@Override
	public List<Customer> findByNameContaining(String name) {
		return customerRepository.findByNameContaining(name);
	}

	@Override
	public Page<Customer> findByNameContaining(String name, Pageable pageable) {
		return customerRepository.findByNameContaining(name, pageable);
	}

	@Override
	public <S extends Customer> S save(S entity) {
		return customerRepository.save(entity);
	}

	@Override
	public Page<Customer> findAll(Pageable pageable) {
		return customerRepository.findAll(pageable);
	}

	@Override
	public List<Customer> findAll() {
		return customerRepository.findAll();
	}

	@Override
	public List<Customer> findAll(Sort sort) {
		return customerRepository.findAll(sort);
	}

	@Override
	public List<Customer> findAllById(Iterable<Long> ids) {
		return customerRepository.findAllById(ids);
	}

	@Override
	public Optional<Customer> findById(Long id) {
		return customerRepository.findById(id);
	}

	@Override
	public <S extends Customer> List<S> saveAll(Iterable<S> entities) {
		return customerRepository.saveAll(entities);
	}

	@Override
	public <S extends Customer> Page<S> findAll(Example<S> example, Pageable pageable) {
		return customerRepository.findAll(example, pageable);
	}

	@Override
	public void deleteInBatch(Iterable<Customer> entities) {
		customerRepository.deleteInBatch(entities);
	}

	@Override
	public <S extends Customer> boolean exists(Example<S> example) {
		return customerRepository.exists(example);
	}

	@Override
	public long count() {
		return customerRepository.count();
	}

	@Override
	public void deleteById(Long id) {
		customerRepository.deleteById(id);
	}

	@Override
	public void delete(Customer entity) {
		customerRepository.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		customerRepository.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		customerRepository.deleteAllInBatch();
	}

	@Override
	public Customer getOne(Long id) {
		return customerRepository.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends Customer> entities) {
		customerRepository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		customerRepository.deleteAll();
	}

	@Override
	public Customer getById(Long id) {
		return customerRepository.getById(id);
	}

	@Override
	public <S extends Customer> List<S> findAll(Example<S> example, Sort sort) {
		return customerRepository.findAll(example, sort);
	}
	
	@Override
	public Customer findByUsername(String username) {
		for(Customer customer : findAll()) {
			if(customer.getName().equals(username)) {
				return customer;
			}
		}
		return null;
	}

	@Override
	public Customer findByName(String name) {
		return customerRepository.findByName(name);
	}

	
	
}
