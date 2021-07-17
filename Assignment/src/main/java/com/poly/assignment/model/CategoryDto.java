package com.poly.assignment.model;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryDto implements Serializable{
	private Long categoryId;
	@NotEmpty(message = "Name không được để trống!")
	private String name;
	
	private Boolean isEdit = false;
}
