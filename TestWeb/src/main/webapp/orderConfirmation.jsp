<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.net.URLDecoder" %>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();
	
	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		for(int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()),"utf-8");
		}
	}
%>

<html>
<head>
<link rel = "stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>Ordering Information</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Ordering Information</h1>
		</div>
	</div>
	
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>receipt</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>shipping address</strong> <br> Name : <%out.println(shipping_name); %>	<br>
				Zip code : <% out.println(shipping_zipCode); %><br>
				Address : <% out.println(shipping_addressName); %>(<%out.println(shipping_country); %>) <br>
			</div>
			<div class="col-4" align="right">
				<p>	<em>delivery date : <%out.println(shipping_shippingDate); %></em>
			</div>
		</div>	
	
		<div>
		<table class="table table-hover">
		<tr>
			<th class="text-center">Ring name</th>
			<th class="text-center">units</th>
			<th class="text-center">price</th>
			<th class="text-center">sub total</th>
		</tr>
		<%
			int sum = 0;
			ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
			if(cartList == null)
				cartList = new ArrayList<Product>();
			for(int i = 0; i < cartList.size(); i++){	// 상품 리스트 하나씩 출력
				Product product = cartList.get(i);
			int total = product.getUnitPrice() * product.getQuantity();
			sum += total;
			
		%>
		<tr>
			<td class="text-center"><em><%=product.getPname() %> </em></td>
			<td class="text-center"><%=product.getQuantity() %></td>
			<td class="text-center"><%=product.getUnitPrice() %>원</td>
			<td class="text-center"><%=total %>원</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td> </td>
			<td> </td>
			<td class="text-right"><strong>total : </strong></td>
			<td class="text-center text-danger"><strong><%=sum%>
			</strong></td>
		</tr>
		</table>
		
		<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId %>" class="btn btn-secondary" role="button"> before </a>
		<a href="./thankCustomer.jsp" class="btn btn-success" role="button"> Order Complete </a>
		<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> Cancel </a>
		</div>
		</div>
</body>
</html>