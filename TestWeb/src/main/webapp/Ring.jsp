<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage ="exceptionNoProductId.jsp"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="KO">
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Product Information</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("Would you like to add the product to your shopping cart?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
  
<body>
   	
  	<jsp:include page="menu.jsp"/>
		
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Ring List</h1>
		</div>
	</div>
		
	<div class="container">
      <div class="col-md-7">    	
      	<%@ include file="dbconn.jsp" %>
			<%
				String id = request.getParameter("id");
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
        <h2 class="featurette-heading fw-normal lh-1" align="left">
   		<%=rs.getString("p_name") %>
        </h2>
        <div class="col-md-5">
      		<img src="./upload2/<%=rs.getString("p_fileName") %>" width="90%" height="90%" align="left"/>
      	</div>
        <p class="fs-2" align="right">Price</p>
        <p align="right"><%=rs.getString("p_UnitPrice") %>원</p>
        <p class="fs-2" align="right">Brand</p>
        <p align="right"><%=rs.getString("p_Manufacturer") %></p>
        <br><br>
		<form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
        <a href="./product.jsp?id=<%=rs.getString("p_id")%>"
		class="btn btn-outline-primary me-2" role="button">More information &raquo;</a>
        </form>
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
 
	<jsp:include page="footer.jsp" />

  </body>
</html>