<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
session.setAttribute("nickname", "홍길동");
session.setAttribute("hobbys", new String[]{"축구", "게임", "독서"});


out.print(session.getMaxInactiveInterval()+"<br />");
session.setMaxInactiveInterval(60*60);
out.print(session.getMaxInactiveInterval()+"<br />");
%>    

<a href = "session_check.jsp">세션데이터 활용하기</a>
