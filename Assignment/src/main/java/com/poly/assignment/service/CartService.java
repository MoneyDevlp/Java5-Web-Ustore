package com.poly.assignment.service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import com.poly.assignment.domain.CartItem;

public interface CartService {
	void add(CartItem item);

	Collection<CartItem> getItems();

	void remove(Long id);

	CartItem update(long proID, int qty);

	double getAmount();



}
