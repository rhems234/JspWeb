<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Login</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container" align="center">
			<h1 class="display-3">Login</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if(error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("Please check your ID and password.");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputuserName" class="sr-only">User Name
					</label>
					<input type="text" class="form-control" placeholder="ID"
					name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password
					</label>
					<input type="password" class="form-control"
					placeholder="Password" name='j_password' required>
				</div>
				<br><br>
				<button class="btn btn btn-lg btn-success btn-block"
				type="submit">Login</button>
			</form>
		</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>