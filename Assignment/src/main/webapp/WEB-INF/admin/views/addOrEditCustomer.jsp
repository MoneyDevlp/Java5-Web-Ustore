<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <section class="row">
            <div class="col offset mt-5">
                <form:form action="/admin/customers/saveOrUpdate" method="post" modelAttribute="customer">
                    <div class="card">
                        <div class="card-header">
                            <h2><i class="fas fa-user-plus"></i> Add New Customer</h2>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="customerId">Customer ID:</label>
                                <%-- <form:input path="isEdit" type="hidden"/> --%>
                                <form:input path="customerId" placeholder="Customer Id?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="customerId"></form:errors></small>
                            </div>
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <form:input path="name" placeholder="Name?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="name"></form:errors></small>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <form:input path="password" type="password" placeholder="Password?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="password"></form:errors></small>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <form:input path="email" placeholder="Email?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="email"></form:errors></small>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone:</label>
                                <form:input path="phone" placeholder="Phone?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="phone"></form:errors></small>
                            </div>
                            <div class="form-group">
                                <label for="registeredDate">RegisteredDate:</label>
                                <form:input path="registeredDate" placeholder="RegisteredDate?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="registeredDate"></form:errors></small>
                            </div>
                        </div>
                        <div class="card-footer text-muted">
                            <button class="btn btn-primary"><i class="fas fa-save"></i> 
                            	<c:if test="${customer.isEdit }">
                            		<span>Update</span>
                            	</c:if>
                            	<c:if test="${!customer.isEdit }">
                            		<span>Save</span>
                            	</c:if>
                            </button>
                            <button type="reset" class="btn btn-secondary"><i class="fas fa-sync-alt"></i> Reset</button>
                            <a href="/admin/customers" class="btn btn-success"><i class="fas fa-users"></i> List Customers</a>
                        </div>
                    </div>
                </form:form>
            </div>
        </section>