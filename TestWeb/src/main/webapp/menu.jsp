<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>	
	<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
   	<a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
    </a>
      
 	<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="main.jsp" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">#</a></li>
        <li><a href="Ring.jsp" class="nav-link px-2 link-dark">Ring</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">상품등록</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
    </ul>
    
    <div class="col-md-3 text-end">
        <a href="login.jsp" type="button" class="btn btn-outline-primary me-2">
        Login</a>
        <a href="member/addMember.jsp" type="button" class="btn btn-outline-primary me-2">
        Sign-up</a>
      </div>
    </header>
</body>
</html>