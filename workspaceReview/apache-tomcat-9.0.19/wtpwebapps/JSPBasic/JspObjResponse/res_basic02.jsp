<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
int age = Integer.parseInt(request.getParameter("age"));
%>

<%
if(age >= 20){
	response.sendRedirect("res_basic_ok.jsp");
} else{
	response.sendRedirect("res_basic_no.jsp");
}
%>
