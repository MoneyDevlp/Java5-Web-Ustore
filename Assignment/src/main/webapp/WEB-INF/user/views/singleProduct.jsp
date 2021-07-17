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
	margin-left: 11%;
	width: 152px;
}
.b:hover {
	color: white;
	background: black;
}
</style>
<div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Single Product</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                 <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Search Products</h2>
                        <form action="">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="Search">
                        </form>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Products</h2>
                        <c:forEach var="product" items="${products}">
                        <div class="thubmnail-recent">
                            <img src="/img/${product.image }" class="recent-thumb" alt="">
                            <h2><a style="text-decoration: none;" href="/edit/${product.productId }">${product.name }</a></h2>
                            <div class="product-sidebar-price">
                                <ins style="color: red;">${product.unitPrice }đ</ins> <del>${product.discount }%</del>
                            </div>                             
                        </div>
             			</c:forEach>
                    </div>
                  
                </div>
                
                <div class="col-md-8">
                    <div class="product-content-right">
                      
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="/img/${product.image }" alt="">
                                    </div>
                                    
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">${product.name }</h2>
                                    <div class="product-inner-price">
                                        <ins style="color: red;">${product.unitPrice }đ</ins> <del>${product.discount }%</del>
                                    </div>    
                                    
                                    <form action="/add" method="post" class="cart">
                                        <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div>
                                        <a style="text-decoration: none; text-align: center;" class="b" href="/add/${product.productId }"><i class="fas fa-cart-plus"></i> Add to cart</a>
                                    </form>    
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2>  
                                                <p>${product.description }</p>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
              
                        
                    </div>                    
                </div>
            </div>
        </div>
    </div>