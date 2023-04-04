<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>	
	<div class = "container">
		<div class = "text-center">
    		<h1>별23#</h1>
    	</div>
	</div>
	<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
   	<a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
    </a>
      
 	<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="main.jsp" class="nav-link px-2 link-dark">Home</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">#</a></li>
        <li><a href="Ring.jsp" class="nav-link px-2 link-dark">Ring</a></li>
        <li><a href="addProduct.jsp" class="nav-link px-2 link-dark">상품등록</a></li>
        <li><a href="/board/list.jsp" class="nav-link px-2 link-dark">게시판</a></li>
    </ul>
    
    <div class="col-md-3 text-end">
    	<a href="#" type="button" class="btn btn-outline-primary me-2">
    	<i class="bi bi-bag"></i>
        장바구니</a>
        <a href="login.jsp" type="button" class="btn btn-outline-primary me-2">
        로그인</a>
        <a href="member/addMember.jsp" type="button" class="btn btn-outline-primary me-2">
        회원가입</a>
      </div>
    </header>
</body>
</html>