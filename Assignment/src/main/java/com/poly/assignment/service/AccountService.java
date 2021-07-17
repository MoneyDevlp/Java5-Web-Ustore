package com.poly.assignment.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.assignment.domain.Account;

public interface AccountService {

	Account getById(Long id);

	void deleteAll();

	Account getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Account entity);

	void deleteById(Long id);

	<S extends Account> List<S> saveAll(Iterable<S> entities);

	Optional<Account> findById(Long id);

	List<Account> findAll();

	<S extends Account> S save(S entity);

	Account findByUsername(String username);

	<S extends Account> Page<S> findAll(Example<S> example, Pageable pageable);

	Page<Account> findAll(Pageable pageable);

	Page<Account> findByUsernameContaining(String name, Pageable pageable);


}
