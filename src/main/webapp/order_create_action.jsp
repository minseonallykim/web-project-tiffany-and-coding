<%@page import="com.itwill.shop.user.User"%>
<%@page import="com.itwill.shop.user.UserService"%>
<%@page import="com.itwill.shop.cart.CartService"%>
<%@page import="com.itwill.shop.order.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>   
<%
	
	
	/*
	주문생성
	*/
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("order_list.jsp");
		return;
	}
	String userId=request.getParameter("sUserId");
	String buyType = request.getParameter("buyType");
	String p_noStr = request.getParameter("p_no");
	String p_qtyStr = request.getParameter("p_qty");
	String address= request.getParameter("address");

	String[] cart_item_no_StrArray = request.getParameterValues("cart_item_no");
	
	
	OrderService orderService = new OrderService();
	CartService cartService = new CartService();
	UserService userService = new UserService();
	
	User user = new User(userId,"","","","",address);
	
	
	
	
	
	
	
	if(buyType.equals("cart")){
		orderService.create(sUserId);
		userService.updateAddress(address, userId);
	
	}else if(buyType.equals("cart_select")){
		orderService.create(sUserId,cart_item_no_StrArray);
		userService.updateAddress(address, userId);
	
	}else if(buyType.equals("direct")){
		orderService.create(sUserId,Integer.parseInt(p_noStr), Integer.parseInt(p_qtyStr));
		userService.updateAddress(address, userId);
		
	}
	response.sendRedirect("order_list.jsp");
%>	
	
