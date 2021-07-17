package com.poly.assignment.interception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.poly.assignment.domain.Account;
import com.poly.assignment.domain.Customer;
import com.poly.assignment.service.SessionService;


@Service
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	SessionService service;
	

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String uri = request.getRequestURI();
		Customer customer = service.get("customer");
		String error = "";
		if(customer == null) {
			error = "please login";
		}
		else if(uri.startsWith("/admin/")) {
			error = "Access denied";
		}
		if(error.length() > 0) {
			service.set("security-uri", uri);
			response.sendRedirect("/loginUser?error=" +error);
			return false;
		}
		return true;
	}
	
	public boolean preHandleAdmin(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String uri = request.getRequestURI();
		Account account = service.get("account");
		String error = "";
		if(account == null) {
			error = "please login";
		}
		else if(uri.startsWith("/user/")) {
			error = "Access denied";
		}
		if(error.length() > 0) {
			service.set("security-uri", uri);
			response.sendRedirect("/loginAdmin?error=" +error);
			return false;
		}
		return true;
	}
}
