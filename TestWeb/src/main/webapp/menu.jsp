<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<div class = "container">
		<div class = "text-center">
    		<h1>★23#</h1>
    	</div>
	</div>
	<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
   	<a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
    </a>
      
 	<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="<c:url value="/main.jsp"/>" class="nav-link px-2 link-dark">Home</a></li>
        <li><a href="<c:url value="/editProduct.jsp?edit=delete"/>" class="nav-link px-2 link-dark">Remove</a></li>
        <li><a href="<c:url value="/Ring.jsp"/>" class="nav-link px-2 link-dark">Ring</a></li>
        <li><a href="<c:url value="/addProduct.jsp"/>" class="nav-link px-2 link-dark">Update</a></li>
        <li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>" class="nav-link px-2 link-dark">Board</a></li>
    </ul>
    
    <div class="col-md-3 text-end">
    	<a href="<c:url value="cart.jsp"/>" type="button" class="btn btn-outline-primary me-2">
    	<i class="bi bi-bag">Cart</i></a>
    	
        <c:choose>
        <c:when test="${empty sessionId}">
    	    <a href="<c:url value="/member/loginMember.jsp"/>" type="button" class="btn btn-outline-primary me-2">Login</a>
	    	<a href="<c:url value="/member/addMember.jsp"/>" type="button" class="btn btn-outline-primary me-2">Join Member</a>
        </c:when>
        
        <c:otherwise>
			<li style="padding-top: 7px; color:white">[<%=sessionId %>님]</li>
			<a class="btn btn-outline-primary me-2" href="<c:url value="/member/logoutMember.jsp"/>" type="button">LogOut</a>
			<a class="btn btn-outline-primary me-2" href="<c:url value="/member/updateMember.jsp"/>" type="button">Edit member</a>
		</c:otherwise>
        </c:choose>
	</div>
</header>