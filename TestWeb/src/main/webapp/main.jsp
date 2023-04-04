<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="KO">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>별23#</title>
</head>
  
<body>

<%@ include file="menu.jsp" %>
   	 
    	<div class="container">
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
				out.println("현재 접속  시각: " + CT + "\n");
			%>
   		</div>
   	</div>
   	
   	<br>
   	<br>
   	
 <div class="container marketing">

    <div class="row">
      <div class="col-lg-4">
      <img src="upload2/ring1.jpg" width="140" height="140" x="50%" y="50%"/>
        <h2 class="fw-normal">Ring</h2>
        <p>별23#에서 아름답고 트렌디한 감성의 패션아이템을 만나보세요!</p>
        <p><a class="btn btn-secondary" href="Ring.jsp">반지 보러가기 »</a></p>
      </div>
     
    </div>
   </div>
   
<%@ include file="footer.jsp"%>

  </body>
</html>