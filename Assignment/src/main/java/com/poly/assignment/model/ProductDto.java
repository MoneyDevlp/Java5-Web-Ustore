package com.poly.assignment.model;

import java.io.Serializable;
import java.util.Date;
import javax.validation.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDto implements Serializable{
	private Long productId;
//	@NotEmpty(message = "Name không được để trống!")
	private String name;
	
	private int quantity;
//	@NotEmpty(message = "UnitPrice không được để trống!")
	private double unitPrice;
	
	private String image;
	
	private String description;
//	@NotEmpty(message = "Discount không được để trống!")
	private double discount;
	private Date enteredDate;
	private short status;
//	@NotEmpty(message = "CategoryId không được để trống!")
	private Long categoryId;
	
}
