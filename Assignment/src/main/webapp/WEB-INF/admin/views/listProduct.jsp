<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<section class="row">
            <div class="col mt-5">
                <div class="card">
                    <div class="card-header">
                        <h2><i class="fas fa-list-ul"></i> List Product</h2>
                    </div>
                    <div class="card-body">
                    <c:if test="${message != null }">
                    	<i style="color: gray;">${message }</i>
                    </c:if>
                    <div class="row mt-2 mb-2">
                    	<div class="col">
                    		<form action="/admin/products/search">
                    		<div class="form-inline float-left">
                    			<label for="name">Name:</label>
                    			<input type="text" class="form-control ml-2" name="name">
                    			<button class="btn btn-outline-primary ml-2">Search</button>
                    		</div>
                    		</form>
                    		<div class="float-right">
                    			<a class="btn btn-outline-primary" href="/admin/products/add">Add New Product</a>
                    		</div>
                    	</div>
                    </div>
                    <table class="table table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <!-- <th><input type="checkbox" class="form-check-inline"></th> -->
                            <th>Id</th>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Date</th>
                            <!-- <th>Category</th> -->
                            <th>Description</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="product" items="${products.content}">
                        <tr>
                            <!-- <td><input type="checkbox" class="form-check-inline"></td> -->
                            <td>${product.productId }</td>
                            <td><img src="/img/${product.image }" alt="" width="70" class="img-fluid"></td>
                            <td>${product.name }</td>
                            <td>${product.quantity }</td>
                            <td>${product.unitPrice }</td>
                            <td>${product.discount }</td>
                            <td>${product.enteredDate }</td>
                            <%-- <td>${product.categoryId }</td> --%> 
                            <td>${product.description }</td>
                            <td>
                                <a href="" class="btn btn-outline-info"><i class="fas fa-info"></i></a>
                                <a href="/admin/products/edit/${product.productId }" class="btn btn-outline-warning"><i class="fas fa-edit"></i></a>
                                <a href="/admin/products/delete/${product.productId }" class="btn btn-outline-danger"><i class="fas fa-recycle"></i></a>
                            </td>
                        </tr>  
                        </c:forEach>       
                    </tbody>
                    
                </table>
                    </div>
                </div> <br>
                <div class="d-flex justify-content-center">
                <a class="btn btn-outline-primary" href="/admin/products?p=0"><i class="fas fa-angle-double-left"></i></a> <a class="btn btn-outline-primary ml-1"
			href="/admin/products?p=${products.number-1}"><i class="fas fa-angle-left"></i></a> <a
			class="btn btn-outline-primary ml-1" href="/admin/products?p=${products.number+1}"><i class="fas fa-angle-right"></i></a> <a
			class="btn btn-outline-primary ml-1" href="/admin/products?p=${products.totalPages-1}"><i class="fas fa-angle-double-right"></i></a>
			</div> <br>
            </div>
        </section>