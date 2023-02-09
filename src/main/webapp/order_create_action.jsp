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
	String buyType = request.getParameter("buyType");
	String p_noStr = request.getParameter("p_no");
	String p_qtyStr = request.getParameter("p_qty");
	//String p_optionStr = request.getParameter("p_option");
	String[] cart_item_no_StrArray = request.getParameterValues("cart_item_no");
	
	String address= request.getParameter("address");
	
	OrderService orderService = new OrderService();
	CartService cartService = new CartService();
	UserService userService = new UserService();
	User updateUser = new User(sUserId,"","","","",address);
	
	
	if(buyType.equals("cart")){
		orderService.create(sUserId);
		//userService.update(updateUser);
	}else if(buyType.equals("cart_select")){
		orderService.create(sUserId,cart_item_no_StrArray);
		//userService.update(updateUser);
	}else if(buyType.equals("direct")){
		orderService.create(sUserId,Integer.parseInt(p_noStr), Integer.parseInt(p_qtyStr));
		//userService.update(updateUser);
	}
	response.sendRedirect("order_list.jsp");
%>	
	
