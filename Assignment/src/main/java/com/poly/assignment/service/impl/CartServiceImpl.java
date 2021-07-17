package com.poly.assignment.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.assignment.domain.CartItem;
import com.poly.assignment.domain.Product;
import com.poly.assignment.service.CartService;

@Service
@SessionScope
public class CartServiceImpl implements CartService{

	Map<Long, CartItem> map = new HashMap<Long, CartItem>();
	
	@Override
	public void add(CartItem item) {
		CartItem cartItem = map.get(item.getProductId());
		if(cartItem != null) {
			cartItem.setQuantity(item.getQuantity() + cartItem.getQuantity());
		}
		else {
			map.put(item.getProductId(), item);
		}
	}
	
	@Override
	public void remove(Long id) {
		map.remove(id);
	}
	
	@Override
	public Collection<CartItem> getItems(){
		return map.values();
	}
	
	@Override
	public CartItem update(long proID, int qty) {
		CartItem cartItem = map.get(proID);
		cartItem.setQuantity(qty);
		return cartItem;
	}
	
	@Override
	public double getAmount() {
		return map.values().stream().mapToDouble(cartItem -> cartItem.getQuantity() * cartItem.getUnitPrice()).sum();
	}

}
