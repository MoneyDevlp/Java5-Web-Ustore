<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <section class="row">
            <div class="col offset mt-5">
                <form:form action="/admin/categories/saveOrUpdate" method="post" modelAttribute="category">
                    <div class="card">
                        <div class="card-header">
                            <h2><i class="fas fa-shopping-basket"></i> Add New Categories</h2>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="categoryId">Category ID:</label>
                                <form:input path="isEdit" type="hidden"/>
                                <form:input path="categoryId" placeholder="Category Id?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="categoryId"></form:errors></small>
                            </div>
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <form:input path="name" placeholder="Category Name?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="name"></form:errors></small>
                            </div>
                        </div>
                        <div class="card-footer text-muted">
                            <button class="btn btn-primary"><i class="fas fa-save"></i> 
                            	<c:if test="${category.isEdit }">
                            		<span>Update</span>
                            	</c:if>
                            	<c:if test="${!category.isEdit }">
                            		<span>Save</span>
                            	</c:if>
                            </button>
                            <button type="reset" class="btn btn-secondary"><i class="fas fa-sync-alt"></i> Reset</button>
                            <a href="/admin/categories" class="btn btn-success"><i class="fas fa-cart-plus"></i> List Categories</a>
                        </div>
                    </div>
                </form:form>
            </div>
        </section>