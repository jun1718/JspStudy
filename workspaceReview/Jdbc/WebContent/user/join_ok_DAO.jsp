<%@page import="kr.co.koo.jdbc.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>    
<%
	request.setCharacterEncoding("utf-8");
%>    
    

<jsp:useBean id = "user" class = "kr.co.koo.jdbc.user.model.UserVO" />
<jsp:setProperty name = "user" property = "*" />

<%
	
	UserDAO dao = UserDAO.getInstance();
	int rn = dao.join(user);
	
	if(rn==1){
		response.sendRedirect("join_success.jsp");
	} else{
		response.sendRedirect("join_form.jsp");
	}
%>    
    