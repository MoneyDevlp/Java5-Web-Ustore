<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<section class="row">
            <div class="col mt-5">
                <form:form action="/admin/products/saveOrUpdate" method="post" modelAttribute="product" enctype="multipart/form-data">
                <div class="card">
                    <div class="card-header">
                        <h2> <i class="fas fa-cart-plus"></i> Add New Product</h2>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-7">
                                <div class="form-group">
                                    <label for="productId">Product ID:</label>
                                    <form:input path="productId" placeholder="Product Id?" cssClass="form-control"/>
                                    <small style="color: red"><form:errors path="productId"></form:errors></small>
                                </div>
                                <div class="form-group">
                                    <label for="name">Name:</label>
                                    <form:input path="name" placeholder="Name?" cssClass="form-control"/>
                                	<small style="color: red"><form:errors path="name"></form:errors></small>
                                </div>
                                <div class="form-group">
                                    <label for="quantity">Quantity:</label>
                                    <form:input path="quantity" placeholder="Quantity?" cssClass="form-control"/>
                                	<small style="color: red"><form:errors path="quantity"></form:errors></small>
                                </div>
                                <div class="input-group form-group">
                                    <span class="input-group-text">Unit Price:</span>
                                    <form:input path="unitPrice" placeholder="UnitPrice?" cssClass="form-control"/>
                                	<small style="color: red"><form:errors path="unitPrice"></form:errors></small>
                                    <span class="input-group-text">$</span>
                                </div>
                                
                                <div class="form-group">
                                    <label for="categoryId">Category:</label>
                                    <form:select path="category.categoryId" class="form-control">
                                    	<form:options items="${categories}"/>
                                    </form:select>
                                    
                                </div>
                                
                            </div>
                            <div class="col-4">
                                <img src="/img/${product.image }" alt="" width="30%" 
                                class="img-fluid">
                                <div class="form-group">
                                    <label for="image">Image File</label>
                                    <input name="img" type="file"/>
                                	<small style="color: red"></small>
                                </div>
                                <div class="input-group form-group">
                                    <span class="input-group-text">Discount:</span>
                                    <form:input path="discount" placeholder="Discount?" cssClass="form-control"/>
                                	<small style="color: red"><form:errors path="discount"></form:errors></small>
                                    <span class="input-group-text">%</span>
                                </div>
                                <div class="form-group">
                                    <label for="enteredDate">EnteredDate:</label>
                                    <form:input path="enteredDate" placeholder="EnteredDate?" cssClass="form-control"/>
                                	<small style="color: red"><form:errors path="enteredDate"></form:errors></small>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <form:textarea path="description" placeholder="Description?" cssClass="form-control"/>
                                	<small style="color: red"><form:errors path="description"></form:errors></small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        <button class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
                        <button class="btn btn-success"><i class="fas fa-edit"></i> Update</button>
                        <button type="reset" class="btn btn-secondary"><i class="fas fa-sync-alt"></i> Reset</button>
                        <a href="/admin/products" class="btn btn-danger float-right"><i class="fas fa-cart-plus"></i> List Product</a>
                    </div>
                </div>
                </form:form>
            </div>
        </section>