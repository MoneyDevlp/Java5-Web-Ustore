<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div id="myCarousel" class="carousel slide container">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner">
		<div class="item active">
			<img src="img/h4-slide2.png" class="img-responsive">
			<div class="container">
				<div class="carousel-caption">
					<h1 style="text-align: right; color: green;">By one, Get one
						50%</h1>
					<p style="text-align: right; color: gray;">school supplies &
						backpacks.*</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img src="img/h4-slide4.png" class="img-responsive">
			<div class="container">
				<div class="carousel-caption">
					<h1 style="text-align: right; color: green;">By one, Get one
						50%</h1>
					<p style="text-align: right; color: gray;">school supplies &
						backpacks.*</p>
					<p style="text-align: right; color: white;">.</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img src="img/h4-slide7.png" class="img-responsive">
			<div class="container">
				<div class="carousel-caption">
					<h1 style="text-align: right; color: green;">By one, Get one
						50%</h1>
					<p style="text-align: right; color: gray;">school supplies &
						backpacks.*</p>
					<p style="text-align: right; color: white;">.</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img src="img/h4-slide3.png" class="img-responsive">
			<div class="container">
				<div class="carousel-caption">
					<h1 style="text-align: right; color: green;">By one, Get one
						50%</h1>
					<p style="text-align: right; color: gray;">school supplies &
						backpacks.*</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Controls -->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		<span class="icon-prev"></span>
	</a> <a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="icon-next"></span>
	</a>
</div>
<!-- /.carousel -->
<div class="promo-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<div class="single-promo promo1">
					<i class="fa fa-refresh"></i>
					<p>30 Days return</p>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-promo promo2">
					<i class="fa fa-truck"></i>
					<p>Free shipping</p>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-promo promo3">
					<i class="fa fa-lock"></i>
					<p>Secure payments</p>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-promo promo4">
					<i class="fa fa-gift"></i>
					<p>New products</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End promo area -->

<div class="maincontent-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="latest-product">
					<h2 class="section-title">OUTSTANDING TOP</h2>
					<div class="promo-area">
						<div class="zigzag-bottom"></div>
						<div class="container">
							<div class="row">
							<c:forEach var="product" items="${products}">
								<div class="col-md-3 col-sm-6">
									<div class="single-product">
										<div class="product-f-image">
											<img src="/img/${product.image }" alt="">
											<div class="product-hover">
												<a href="${pageContext.request.contextPath}/shop" class="add-to-cart-link"><i
													class="fa fa-shopping-cart"></i> Add to cart</a> <a
													href="${pageContext.request.contextPath}/shop" class="view-details-link"><i
													class="fa fa-link"></i> See details</a>
											</div>
										</div>

										<h2 class="sp">
											<a style="text-decoration: none;" href="single-product.html">${product.name }</a>
										</h2>

										<div class="product-carousel-price">
											<ins>${product.unitPrice }đ</ins>
											<del>${product.discount }%</del>
										</div>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<!-- End promo area -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End main content area -->

<div class="brands-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<marquee behavior="" direction="">
					<img src="img/brand1.png" alt=""> <img src="img/brand2.png"
						alt=""> <img src="img/brand3.png" alt=""> <img
						src="img/brand4.png" alt=""> <img src="img/brand5.png"
						alt=""> <img src="img/brand6.png" alt=""> <img
						src="img/brand1.png" alt=""> <img src="img/brand2.png"
						alt="">
				</marquee>
			</div>
		</div>
	</div>
</div>
<!-- End brands area -->

<div class="product-widget-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="single-product-widget">
					<h2 class="product-wid-title">TOP SELLERS</h2>
					<a href="" class="wid-view-more">View All</a>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Iphone
								12 Pro Max</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Samsung
								S21 Ultra</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Oppo
								Find X3 Pro</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="single-product-widget">
					<h2 class="product-wid-title">RECNTLY VIEWED</h2>
					<a href="#" class="wid-view-more">View All</a>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-7.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Sony
								playstation microsoft</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Sony
								Smart Air Condtion</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Samsung
								gallaxy note 4</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="single-product-widget">
					<h2 class="product-wid-title">TOP NEW</h2>
					<a href="#" class="wid-view-more">View All</a>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Redmi
								Note 10 Pro</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-5.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Vsmart
								Aris Pro</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
					<div class="single-wid-product">
						<a href="single-product.html"><img
							src="img/product-thumb-6.jpg" alt="" class="product-thumb"></a>
						<h2>
							<a style="text-decoration: none;" href="single-product.html">Realme
								8 Pro</a>
						</h2>
						<div class="product-wid-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product-wid-price">
							<ins>$400.00</ins>
							<del>$425.00</del>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End product widget area -->