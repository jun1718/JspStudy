<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String rememberCheck = request.getParameter("id_remember");


if(id.equals("abc1234") && pw.equals("a1")){
	Cookie idCookie = new Cookie("id_cookie", id);
	idCookie.setMaxAge(5);
	response.addCookie(idCookie);
	
	if(rememberCheck != null){
		Cookie idRemember = new Cookie("id_remember", id);
		idRemember.setMaxAge(5);
		response.addCookie(idRemember);
	}
	
	response.sendRedirect("cookie_login_welcome.jsp");
}else{
	response.sendRedirect("cookie_login.jsp");
}
%>    
    