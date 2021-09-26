<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie[] cookies = request.getCookies();
	
	for(Cookie c : cookies){
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		
		out.print("<p> 쿠키의 이름: "+cookieName+"<br/> 쿠키의 값: "+cookieValue+"</p>");
		out.print("=======================<br/>");
	}
%>    