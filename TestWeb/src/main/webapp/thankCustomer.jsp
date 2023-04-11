<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>Order Complete</title>
</head>
<body>
	<%
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
			if(n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
		}
	}
	%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Order Complete</h1>
		</div>
	</div>
	
	<div class="container">
		<h2 class="alert alert-danger">Thank you for your order.</h2>
		<p> Order is <%		out.println(shipping_shippingDate); %>will be shipped to!
		<p> Order Number : <% out.println(shipping_cartId); %>
	</div>
	<div class="container">
		<p> <a href="./Ring.jsp" class="btn btn-secondary"> &laquo; Product List</a>
	</div>
</body>
</html>
<%
	session.invalidate();

	for(int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Shipping.cartId"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping.name"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping.shippingDate"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping.country"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping.zipCode"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping.cartIaddressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>