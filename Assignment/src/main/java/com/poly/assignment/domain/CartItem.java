package com.poly.assignment.domain;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem implements Serializable{
	private Long productId;
	private String name;
	private int quantity;
	private double unitPrice;
	private String image;
}
