<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 아이디 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">This product does not exist.</h2>
		</div>
	</div>
	
	<div class="container">
		<p><%= request.getRequestURI() %>?<%=request.getQueryString() %>
		<p> <a href="products.jsp" class="btn btn-secondary"> Product List
		&raquo;</a>
	</div>
</body>
</html>