<%@page import="com.itwill.shop.order.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String sUserId = "test1";
	/*
	전체주문 삭제
	 - 주문테이블 delete 
	*/
	
	if(request.getMethod().equals("GET")){
		response.sendRedirect("order_list.jsp");
		return;
	}
	OrderService orderService = new OrderService();
	orderService.delete(sUserId);
	response.sendRedirect("order_list.jsp");
%>	
	
