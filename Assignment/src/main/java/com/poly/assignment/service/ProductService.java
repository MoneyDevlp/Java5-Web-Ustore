package com.poly.assignment.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.poly.assignment.domain.Product;
import com.poly.assignment.domain.Report;

public interface ProductService {

	Product getById(Long id);

	void deleteAll();

	Product getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Product entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	<S extends Product> boolean exists(Example<S> example);

	<S extends Product> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Product> List<S> saveAll(Iterable<S> entities);

	Optional<Product> findById(Long id);

	List<Product> findAll(Sort sort);

	List<Product> findAll();

	Page<Product> findAll(Pageable pageable);

	<S extends Product> S save(S entity);

	Page<Product> findByNameContaining(String name, Pageable pageable);

	List<Report> getInventoryByCategory();

}
