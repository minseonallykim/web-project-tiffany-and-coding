<%@page import="com.itwill.shop.user.User"%>
<%@page import="com.itwill.shop.user.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    
    String sUserId = "test1";
    
    if(request.getMethod().equalsIgnoreCase("GET")){
    	response.sendRedirect("order_create_form.jsp");
    	return;
    }
    
    
    String address = request.getParameter("address1");
    UserService userService = new UserService();
    User addressUpdate = new User(sUserId,"","","","",address);
    userService.update(addressUpdate);
    response.sendRedirect("order_create_form.jsp");
    
    %>