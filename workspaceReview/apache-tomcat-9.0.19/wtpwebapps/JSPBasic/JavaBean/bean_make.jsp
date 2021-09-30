<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "kr.co.jspbasic.user.UserBean" %>
    
<jsp:useBean id = "user" class = "kr.co.jspbasic.user.UserBean"  scope = "request"/>    

<jsp:setProperty name = "user" property = "*" />

<%
	/*
	request.setCharacterEncoding("utf-8");	

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	*/
%>

<%--
<jsp:setProperty name = "user" property = "id" value = "<%= id %>" />
<jsp:setProperty name = "user" property = "pw" value = "<%= pw %>" />
<jsp:setProperty name = "user" property = "name" value = "<%= name %>" />
<jsp:setProperty name = "user" property = "email" value = "<%= email %>" />
 --%>

<jsp:forward page = "bean_use.jsp" />