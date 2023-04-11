<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="KO">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>★23#</title>
</head>
  
<body>

<%@ include file="menu.jsp" %>
   	 
    	<div class="container" align="center">
   		<div class = "text-center">
   			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("current access time: " + CT + "\n");
			%>
   		</div>
   	<br>                              
      <div class="col-lg-4">
      <img src="upload2/P1234.png" width="200" height="200" x="50%" y="50%"/>
        <h2 class="fw-normal">Ring</h2>
        <p>Meet beautiful and trendy fashion items!</p>
        <p><a class="btn btn-secondary" href="<c:url value="Ring.jsp"/>">Ring View »</a></p>
      </div>
   
   </div>
   
<%@ include file="footer.jsp"%>

  </body>
</html>