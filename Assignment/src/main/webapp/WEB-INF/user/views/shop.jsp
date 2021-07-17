<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="product-big-title-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="product-bit-title text-center">
					<h2>Shop</h2>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="single-product-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-lg-12">
					<form action="/search">
						<div class="form-inline" style="float: right;">
							<!-- <label for="name">Name:</label> --> 
							<input type="text"
								class="form-control" name="name">
							<button class="btn btn-primary">Search</button>
						</div>
					</form>
				</div>

			</div> <br>
			<c:forEach var="product" items="${products.content}">
				<div class="col-md-3 col-sm-6">
					<div class="single-shop-product">
						<div class="product-upper">
							<img src="/img/${product.image }" alt="">
						</div>
						<h2 class="sp">
							<a style="text-decoration: none;" href="${pageContext.request.contextPath}/singleProduct">${product.name }</a>
						</h2>
						<div class="product-carousel-price">
							<ins>${product.unitPrice }đ</ins>
							<del>${product.discount }%</del>
						</div>

						<div class="product-option-shop">
							<a class="add_to_cart_button" data-quantity="1"
								data-product_sku="" data-product_id="70" rel="nofollow"
								href="/edit/${product.productId }">Xem chi tiết</a>
						</div>
					</div>
				</div>
			</c:forEach>


		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="product-pagination text-center">
					<div class="d-flex justify-content-center">
						<a class="btn btn-outline-primary" href="/shop?p=0"><i class="fas fa-fast-backward"></i></a> <a
							class="btn btn-outline-primary ml-1"
							href="/shop?p=${products.number-1}"><i class="fas fa-step-backward"></i></a> <a
							class="btn btn-outline-primary ml-1"
							href="/shop?p=${products.number+1}"><i class="fas fa-step-forward"></i></a> <a
							class="btn btn-outline-primary ml-1"
							href="/shop?p=${products.totalPages-1}"><i class="fas fa-fast-forward"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>