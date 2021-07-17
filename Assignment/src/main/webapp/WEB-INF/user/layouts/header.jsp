<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page session="false"%>
<div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#" style="text-decoration: none;"><span class="key">Language: </span><span class="value"><s:message code="lo.mn.lague"></s:message> </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/homeUser?lang=vi">Tiếng Việt</a></li>
                                    <li><a href="${pageContext.request.contextPath}/homeUser?lang=en">English</a></li>
                                </ul>
                            </li>
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#" style="text-decoration: none;"><span class="value"><s:message code="lo.mn.account"></s:message></span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/logoutUser"><s:message code="lo.mn.logout"></s:message></a></li>
                                    <li><a href="#"><s:message code="lo.mn.change"></s:message></a></li>
                                    <li><a href="#"><s:message code="lo.mn.edit"></s:message></a></li>
                                </ul>
                            </li>
                        </ul>
                        
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="${pageContext.request.contextPath}/cart"><span class="cart-amunt">$100</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">5</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
