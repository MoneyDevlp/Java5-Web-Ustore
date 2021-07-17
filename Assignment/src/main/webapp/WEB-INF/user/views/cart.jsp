<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style type="text/css">
.b {
	background-color: #4682B4; border : none;
	color: white;
	padding: 15px 32px;
	font-weight:bold;
	text-align: center;
	display: inline-block;
	font-size: 12px;
	border: none;
}
.b:hover {
	color: white;
	background: black;
}
</style>
<div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Search Products</h2>
                        <form action="#">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="Search">
                        </form>
                    </div>      
                    
                </div>
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                        <p style="text-align: center; font-weight: bold;">${mess }</p>
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">&nbsp;</th>
                                            <th>Id</th>
                                            <th class="product-thumbnail">&nbsp;</th>
                                            <th class="product-name">Name</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-amount">Amount</th>
                                            <!-- <th class="product-subtotal">Total</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="item" items="${cartItems }">
                                    	<form action="update" method="post">
                                    	<input type="hidden" name="productId" value="${item.productId }">
                                        <tr class="cart_item">
                                            <td class="product-remove">
                                                <a title="Remove this item" class="remove" href="/delete/${item.productId }">x</a> 
                                            </td>
											
											<td>${item.productId }</td>
											
                                            <td class="product-thumbnail">
                                                <a href="single-product.html"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="/img/${item.image }"></a>
                                            </td>

                                            <td class="product-name">${item.name }</td>

                                            <td class="product-price">
                                                <span class="amount">${item.unitPrice }</span> 
                                            </td>

                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    <%-- <input type="hidden" name="productId" value="${item.productId }"> --%>
                                                    <input type="text" class="form-control" style="width: 30%; text-align: center; margin-left: 30%" title="Qty" value="${item.quantity }" name="quantity" onblur="this.form.submit()">
                                                </div>
                                            </td>
											
											<td class="product-price">
                                                <span class="amount">${item.unitPrice*item.quantity }</span> 
                                            </td>
                                            <!-- <td class="product-subtotal">
                                                <span class="amount">15.00</span> 
                                            </td> -->
                                        </tr>
                                        <br>
                                        
                                        </form>  
                                                              
                                        </c:forEach>
                                        
                                    </tbody>
                                    
                                </table>
                                <p>Tổng tiền: <b>${total }</b></p>
                                <a href="${pageContext.request.contextPath}/cart" class="b" style="margin-left: 50%; text-decoration: none;">Update</a>
                                <a href="/saveOrder" class="b" style="text-decoration: none;">Order</a>
                        </div>                        
                    </div>                    
                </div>
            </div>
        </div>
    </div>