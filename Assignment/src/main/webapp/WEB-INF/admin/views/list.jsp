<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<section class="row">
            <div class="col mt-5"> 
                <div class="card">
                    <div class="card-header">
                        <h2><i class="fas fa-list-ul"></i> List Categories</h2>
                    </div>
                    <div class="card-body">
                    <c:if test="${message != null }">
                    	<i style="color: gray;">${message }</i>
                    </c:if>
                    <div class="row mt-2 mb-2">
                    	<div class="col">
                    		<form action="/admin/categories/search">
                    		<div class="form-inline float-left">
                    			<label for="name">Name:</label>
                    			<input type="text" class="form-control ml-2" name="name">
                    			<button class="btn btn-outline-primary ml-2">Search</button>
                    		</div>
                    		</form>
                    		<div class="float-right">
                    			<a class="btn btn-outline-primary" href="/admin/categories/add">Add New Category</a>
                    		</div>
                    	</div>
                    </div>
                    <table class="table table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>Category ID</th>
                            <th>Name</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="category" items="${categories.content}">
                        <tr>
                            <td scope="row">${category.categoryId }</td>
                            <td>${category.name }</td>
                            <td>
                                <a href="" class="btn btn-outline-info"><i class="fas fa-info"></i></a>
                                <a href="/admin/categories/edit/${category.categoryId }" class="btn btn-outline-warning"><i class="fas fa-edit"></i></a>
                                <a href="/admin/categories/delete/${category.categoryId }" class="btn btn-outline-danger"><i class="fas fa-recycle"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    
                </table>
                    </div>
                    
                </div> <br>
                <div class="d-flex justify-content-center">
                <a class="btn btn-outline-primary" href="/admin/categories?p=0"><i class="fas fa-angle-double-left"></i></a> <a class="btn btn-outline-primary ml-1"
			href="/admin/categories?p=${categories.number-1}"><i class="fas fa-angle-left"></i></a> <a
			class="btn btn-outline-primary ml-1" href="/admin/categories?p=${categories.number+1}"><i class="fas fa-angle-right"></i></a> <a
			class="btn btn-outline-primary ml-1" href="/admin/categories?p=${categories.totalPages-1}"><i class="fas fa-angle-double-right"></i></a>
			</div> 
            </div>
        </section>