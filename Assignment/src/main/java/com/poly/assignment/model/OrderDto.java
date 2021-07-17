package com.poly.assignment.model;

import java.io.Serializable;
import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDto implements Serializable{
	private int orderId;
	private Date orderDate;
	private int customerId;
	private double amount;
}
