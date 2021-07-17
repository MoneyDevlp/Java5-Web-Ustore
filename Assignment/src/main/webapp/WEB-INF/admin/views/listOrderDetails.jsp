<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<section class="row">
            <div class="col mt-5">
                <div class="card">
                    <div class="card-header">
                        <h2><i class="fas fa-list-ul"></i> List Order Detail</h2>
                    </div>
                    <div class="card-body">
                    <c:if test="${message != null }">
                    	<i style="color: gray;">${message }</i>
                    </c:if>
                    <div class="row mt-2 mb-2">
                    	<!-- <div class="col">
                    		<form action="/admin/customers/search">
                    		<div class="form-inline float-left">
                    			<label for="name">Name:</label>
                    			<input type="text" class="form-control ml-2" name="name">
                    			<button class="btn btn-outline-primary ml-2">Search</button>
                    		</div>
                    		</form>
                    		<div class="float-right">
                    			<a class="btn btn-outline-primary" href="/admin/customers/add">Add New Customer</a>
                    		</div>
                    	</div> -->
                    </div>
                    <table class="table table-striped">
                    <thead class="thead-inverse">
                        <tr>
                        	<th>OrderDetail ID</th>
                            <th>Order ID</th>
                            <th>Product</th>
                            <th>Unit price</th>
                            <th>Quantity</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="detail" items="${details}">
                        <tr>
                            <td scope="row">${detail.orderDetailId }</td>
                            <td>${detail.order.orderId}</td>
                            <td>${detail.product.name}</td>
                            <td>${detail.unitPrice }</td>
                            <td>${detail.quantity }</td>
                            <td>
                                <a href="/edit/${order.orderId }" class="btn btn-outline-info"><i class="fas fa-info"></i></a>
                                <a href="/admin/customers/delete/${customer.customerId }" class="btn btn-outline-danger"><i class="fas fa-recycle"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    
                </table>
                    </div>
                    
                </div> <br>
                <div class="d-flex justify-content-center">
                <a class="btn btn-outline-primary" href="/admin/customers?p=0"><i class="fas fa-angle-double-left"></i></a> <a class="btn btn-outline-primary ml-1"
			href="/admin/customers?p=${customers.number-1}"><i class="fas fa-angle-left"></i></a> <a
			class="btn btn-outline-primary ml-1" href="/admin/customers?p=${customers.number+1}"><i class="fas fa-angle-right"></i></a> <a
			class="btn btn-outline-primary ml-1" href="/admin/customers?p=${customers.totalPages-1}"><i class="fas fa-angle-double-right"></i></a>
			</div> <br>
            </div>
        </section>