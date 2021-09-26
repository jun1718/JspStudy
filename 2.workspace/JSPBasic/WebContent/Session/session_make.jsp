<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	/*
	-세션은 쿠키와 마찬가지로 http 통신 데이터를 유지하기위한 수단으로 사용함
	-세션에 데이터를 저장할 때는 JSP 내장객체 session이 지원하는 setAttribute() 메서드를 사용함
	-해당 메서드의 첫번째 매개값으로 세션의 이름을 정하고, 두번째 매개값으로 세션에 저장할 값을 정해줌
	*/
	
	session.setAttribute("nickname", "홍길동");
	session.setAttribute("hobbys", new String[]{"축구", "게임", "독서"});
	
%>


<a href = "session_check.jsp">세션 데이터 활용하기</a>
