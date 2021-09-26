<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	Cookie apple = new Cookie("apple_cookie", "사과맛쿠키");
	Cookie peanut = new Cookie("peanut_cookie", "땅콩맛쿠키");
	
	apple.setMaxAge(60*60); // 쿠키의 유효시간 설정(초) : 60초 x 60초
	peanut.setMaxAge(20);
	
	response.addCookie(apple);
	response.addCookie(peanut);
%>

<a href = "cookie_check.jsp">쿠키확인하기~</a>
