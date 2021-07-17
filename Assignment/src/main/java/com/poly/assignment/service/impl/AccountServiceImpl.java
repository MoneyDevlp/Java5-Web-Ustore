package com.poly.assignment.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.assignment.domain.Account;
import com.poly.assignment.repository.AccountRepository;
import com.poly.assignment.service.AccountService;
@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	AccountRepository accountRepository;
	@Autowired
	AccountService accountService;
	
	public AccountServiceImpl(AccountRepository accountRepository) {
		this.accountRepository = accountRepository;
	}
		
	@Override
	public Page<Account> findByUsernameContaining(String name, Pageable pageable) {
		return accountRepository.findByUsernameContaining(name, pageable);
	}

	@Override
	public <S extends Account> S save(S entity) {
		return accountRepository.save(entity);
	}

	@Override
	public List<Account> findAll() {
		return accountRepository.findAll();
	}
	
	@Override
	public Page<Account> findAll(Pageable pageable) {
		return accountRepository.findAll(pageable);
	}

	@Override
	public <S extends Account> Page<S> findAll(Example<S> example, Pageable pageable) {
		return accountRepository.findAll(example, pageable);
	}

	@Override
	public Optional<Account> findById(Long id) {
		return accountRepository.findById(id);
	}

	@Override
	public <S extends Account> List<S> saveAll(Iterable<S> entities) {
		return accountRepository.saveAll(entities);
	}

	@Override
	public void deleteById(Long id) {
		accountRepository.deleteById(id);
	}

	@Override
	public void delete(Account entity) {
		accountRepository.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		accountRepository.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		accountRepository.deleteAllInBatch();
	}

	@Override
	public Account getOne(Long id) {
		return accountRepository.getOne(id);
	}

	@Override
	public void deleteAll() {
		accountRepository.deleteAll();
	}

	@Override
	public Account getById(Long id) {
		return accountRepository.getById(id);
	}
	
	@Override
	public Account findByUsername(String username) {
		for(Account account: findAll()) {
			if(account.getUsername().equals(username)) {
				return account;
			}
		}
		return null;
	}
}
