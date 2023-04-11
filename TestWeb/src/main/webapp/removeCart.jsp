<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%-- <%@ page import="dao.ProductRepository"%> --%>
<%@ include file="dbconn.jsp"%>

<%
	String id = request.getParameter("id");
	
// 	if (id == null || id.trim().equals("")) {
// 		response.sendRedirect("Ring.jsp");
// 		return;
// 	}

// 	ProductRepository dao = ProductRepository.getInstance();
	
// 	Product product = dao.getProductById(id);
// 	if (product == null) {
// 		response.sendRedirect("exceptionNoProductId.jsp");
// 	}
	
	Product goods = new Product();

	String sql = "select * from product where p_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	if (rs.next()) {	
		goods.setProductId(rs.getString("p_id"));
	}
	
	ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
	Product goodsQnt = new Product();
	
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cartList.remove(goodsQnt);
			break;
		}
	}

	response.sendRedirect("cart.jsp");
%>
