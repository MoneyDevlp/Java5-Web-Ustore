package com.poly.assignment.model;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AccountDto implements Serializable{
	private Long accountId;
	@NotEmpty(message = "name không được để trống!")
	private String username;
	@NotEmpty(message = "password không được để trống!")
	private String password;
	
	private Boolean isEdit = false;
}
