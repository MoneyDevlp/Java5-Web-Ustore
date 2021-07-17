<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container-fluid p-0">

	<h1 class="h3 mb-3">
		<strong>Analytics</strong> Dashboard
	</h1>

	<div class="row">
		<div class="col-xl-6 col-xxl-5 d-flex">
			<div class="w-100">
			<div class="card-header" style="background: #000055; color: white; text-align: center;">
					<h5 class="card-title mb-0">STATISTICAL</h5>
				</div>
				<div class="row">
					<div class="col-sm-6">
					
						<br>
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col mt-0">
										<h5 class="card-title">Sales</h5>
									</div>

									<div class="col-auto">
										<div class="stat text-primary">
											<i class="align-middle" data-feather="truck"></i>
										</div>
									</div>
								</div>
								<h1 class="mt-1 mb-3">2.382</h1>
								<div class="mb-0">
									<span class="text-danger"> <i
										class="mdi mdi-arrow-bottom-right"></i> -3.65%
									</span> <span class="text-muted">Since last week</span>
								</div>
							</div>
						</div>
						<br>
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col mt-0">
										<h5 class="card-title">Visitors</h5>
									</div>

									<div class="col-auto">
										<div class="stat text-primary">
											<i class="align-middle" data-feather="users"></i>
										</div>
									</div>
								</div>
								<h1 class="mt-1 mb-3">14.212</h1>
								<div class="mb-0">
									<span class="text-success"> <i
										class="mdi mdi-arrow-bottom-right"></i> 5.25%
									</span> <span class="text-muted">Since last week</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<br>
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col mt-0">
										<h5 class="card-title">Earnings</h5>
									</div>

									<div class="col-auto">
										<div class="stat text-primary">
											<i class="align-middle" data-feather="dollar-sign"></i>
										</div>
									</div>
								</div>
								<h1 class="mt-1 mb-3">$21.300</h1>
								<div class="mb-0">
									<span class="text-success"> <i
										class="mdi mdi-arrow-bottom-right"></i> 6.65%
									</span> <span class="text-muted">Since last week</span>
								</div>
							</div>
						</div>
						<br>
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col mt-0">
										<h5 class="card-title">Orders</h5>
									</div>

									<div class="col-auto">
										<div class="stat text-primary">
											<i class="align-middle" data-feather="shopping-cart"></i>
										</div>
									</div>
								</div>
								<h1 class="mt-1 mb-3">64</h1>
								<div class="mb-0">
									<span class="text-danger"> <i
										class="mdi mdi-arrow-bottom-right"></i> -2.25%
									</span> <span class="text-muted">Since last week</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xl-6 col-xxl-7">
			<div class="card flex-fill w-100" style="background: #F5F5F5">
				<div class="card-header" style="background: #000055; color: white; text-align: center;">
					<h5 class="card-title mb-0">RECENT MOVEMENT</h5>
				</div>
				<div class="card-body py-0">
					<div class="chart chart-sm">
						<img alt="" src="/img/p.jpg" class="img-fluit" width="60%"
							style="margin-left: 20%">
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="row">

		<div class="col-12 col-md-12 col-xxl-6 d-flex order-3 order-xxl-2">
			<div class="card flex-fill w-100">
				<div class="card-header">

					<h5 class="card-title mb-0"><i class="fas fa-chart-line"></i> REPORT INVENTORY BY CATEGORY</h5>
				</div>
				<div class="card-body">
						<!-- <h3>
							<i class="fas fa-chart-line"></i> REPORT INVENTORY BY CATEGORY
						</h3> -->
						<form action="/homeAdmin">
							<table class="table table-bordered border-secondary">
								<thead class="table-warning">
									<tr>
										<th>Loại hàng</th>
										<th>Tổng giá</th>
										<th>Số sản phẩm</th>
									</tr>
								</thead>
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.group.name}</td>
										<td>${item.sum}</td>
										<td>${item.count}</td>
									</tr>
								</c:forEach>
							</table>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>


