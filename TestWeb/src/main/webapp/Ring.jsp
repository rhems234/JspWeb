<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="KO">
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
  
<body>

<div class = "container">
	<div class = "text-center">
    	<h1>상품 목록</h1>
    </div>
</div>
   	
  	<jsp:include page="menu.jsp"/>
	
	<div class="container">
      <div class="col-md-7">    	
      	<%@ include file="dbconn.jsp" %>
			<%
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
        <h2 class="featurette-heading fw-normal lh-1" style="float:center">
   		<%=rs.getString("p_name") %>
        </h2>
        <div class="col-md-5">
      		<img src="./upload2/<%=rs.getString("p_fileName") %>" width="100%" height="100%" style="float:right;"/>
      	</div>
        <p class="fs-2">가격</p>
        <p><%=rs.getString("p_UnitPrice") %>원
        <p class="fs-2">Size</p>
        (12호 - 14호 기준)
        <br>
        <p class="fs-2">Meterial</p>
        <p>신주, 앤틱도금</p> 
		<p><%=rs.getString("p_description") %>
        <a href="cart.jsp" type="button" class="btn btn-outline-primary me-2">
        상품 구매</a>
        <a href="#" type="button" class="btn btn-outline-primary me-2">
        장바구니 담기</a>
        <a href="#" type="button" class="btn btn-outline-primary me-2">
        상품 삭제</a>
        <hr class="featurette-divider">
        <%
			}

			if (rs != null)
				rs.close();
 			if (pstmt != null)
 				pstmt.close();
 			if (conn != null)
				conn.close();
			%>
      </div>
    </div>
 
<%@ include file="footer.jsp"%>

  </body>
</html>