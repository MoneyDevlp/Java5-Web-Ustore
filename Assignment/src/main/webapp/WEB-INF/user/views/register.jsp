<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<section class="sign-in">
            <div class="container ct">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img class="td" src="/img/signin-image.jpg" alt="sing up image"></figure>
                        <a href="${pageContext.request.contextPath}/user" class="signup-image-link">Login account</a>             
                    </div>

                    <div class="signin-form">
                    <p class="m"><b><i>${message}${param.error}</i></b></p>
                        <h2 class="form-title h">Register</h2>
                        <form:form method="post" action="/user/customers/save"  class="register-form" id="login-form" modelAttribute="customer">
                            <div class="card-body">
                            <div class="form-group">
                                <%-- <form:input path="isEdit" type="hidden"/> --%>
                                Customer ID:<form:input path="customerId" placeholder="Customer Id?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="customerId"></form:errors></small>
                            </div>
                            <div class="form-group">
                                Name:<form:input path="name" placeholder="Name?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="name"></form:errors></small>
                            </div>
                            <div class="form-group">
                                Password:<form:input path="password" type="password" placeholder="Password?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="password"></form:errors></small>
                            </div>
                            <div class="form-group">
                                Email:<form:input path="email" placeholder="Email?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="email"></form:errors></small>
                            </div>
                            <div class="form-group">
                                Phone:<form:input path="phone" placeholder="Phone?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="phone"></form:errors></small>
                            </div>
                            <div class="form-group">
                                RegisteredDate:<form:input path="registeredDate" placeholder="RegisteredDate?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="registeredDate"></form:errors></small>
                            </div>
                            <div class="form-group">
                                Status:<form:input path="status" placeholder="Status?" cssClass="form-control"/>
                                <small style="color: red"><form:errors path="status"></form:errors></small>
                            </div>
                            </div> <br>
                            <div class="card-footer text-muted">
                            <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Register</button>
                            <button type="reset" class="btn btn-secondary">Reset</button>
                        </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </section>
