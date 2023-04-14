<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="KO">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>회원 정보</title>
</head>
<body>
	<jsp:include page="/menu.jsp" />
	
	<div class="jumbotron">
		<div class="container" align="center">
			<h1 class="display-3">Profile</h1>
		</div>
	</div>

	<div class="container" align="center">
		<%
			String msg = request.getParameter("msg");

			if (msg != null) {
				if (msg.equals("0")) // 회원 정보 수정
					out.println(" <h2 class='alert alert-danger'>Member information has been modified.</h2>");
				else if (msg.equals("1")) // 회원 가입
					out.println(" <h2 class='alert alert-danger'>Congratulations on becoming a member.</h2>");
				else if (msg.equals("2")) { // 회
					String loginId = (String) session.getAttribute("sessionId");
					out.println(" <h2 class='alert alert-danger'> Welcome to " + loginId);
				}				
			} else {
				out.println("<h2 class='alert alert-danger'>Member information has been deleted.</h2>");
			}
		%>
	</div>	
</body>
</html>