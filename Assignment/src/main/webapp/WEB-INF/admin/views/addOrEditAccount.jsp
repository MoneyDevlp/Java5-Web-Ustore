<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <section class="row">
            <div class="col offset mt-5">
                <form:form action="/admin/accounts/saveOrUpdate" method="post" modelAttribute="account">
                    <div class="card">
                        <div class="card-header">
                            <h2><i class="fas fa-user-plus"></i> Add New Account</h2>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="accountId">Account ID:</label>
                                <%-- <form:input path="isEdit" type="hidden"/> --%>
                                <form:input path="accountId" placeholder="Account Id?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="accountId"></form:errors></small>
                            </div>
                            <div class="form-group">
                                <label for="username">Username:</label>
                                <form:input path="username" placeholder="Username?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="username"></form:errors></small>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <form:input path="password" type="password" placeholder="Password?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="password"></form:errors></small>
                            </div>   
                        </div>
                        <div class="card-footer text-muted">
                             <button class="btn btn-primary"><i class="fas fa-save"></i> 
                            	<c:if test="${account.isEdit }">
                            		<span>Update</span>
                            	</c:if>
                            	<c:if test="${!account.isEdit }">
                            		<span>Save</span>
                            	</c:if>
                            </button> 
                            <button type="reset" class="btn btn-secondary"><i class="fas fa-sync-alt"></i> Reset</button>
                            <a href="/admin/accounts" class="btn btn-success"><i class="fas fa-users"></i> List Accounts</a>
                        </div>
                    </div>
                </form:form>
            </div>
        </section>