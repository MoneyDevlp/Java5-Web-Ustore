package com.poly.assignment.model;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class CustomerDto implements Serializable{
	private Long customerId;
	@NotEmpty(message = "Name không được để trống!")
	private String name;
	@NotEmpty(message = "Email không được để trống!")
	@Email(message = "Email không đúng định dạng!")
	private String email;
	@NotEmpty(message = "Password không được để trống!")
	private String password;
	@NotEmpty(message = "Phone không được để trống!")
	private String phone;
	private Date registeredDate;
	private short status;
	
	private Boolean isEdit = false;
}
