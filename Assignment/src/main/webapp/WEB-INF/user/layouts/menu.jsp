<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page session="false"%>
<div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li ><a href="${pageContext.request.contextPath}/homeUser"><s:message code="lo.mn.home"></s:message></a></li>
                        <li><a href="${pageContext.request.contextPath}/about"><s:message code="lo.mn.about"></s:message></a></li>
                        <li><a href="${pageContext.request.contextPath}/shop"><s:message code="lo.mn.product"></s:message></a></li>
                        <li><a href="${pageContext.request.contextPath}/news"><s:message code="lo.mn.news"></s:message></a></li>
                        <li><a href="${pageContext.request.contextPath}/contact"><s:message code="lo.mn.contact"></s:message></a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->