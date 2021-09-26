<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Arrays"%>
    
<%
String nick = (String)session.getAttribute("nickname");
String[] hobbys = (String[])session.getAttribute("hobbys");

out.print(nick+"<br />");
out.print(Arrays.toString(hobbys)+"<br />");



out.print("==========================================================================<br />");
out.print(session.getMaxInactiveInterval()+"초 <br />");
out.print("==========================================================================<br />");
session.removeAttribute("nickname");
nick = (String)session.getAttribute("nickname");
out.print("삭제 후 섹션객체의 데이터 nickname의 값 : "+nick+" <br />");
out.print("삭제 되지 않은 섹션객체의 데이터 hobbys의 값 : "+Arrays.toString(hobbys)+" <br />");

if(request.isRequestedSessionIdValid()){
	out.print("유효한 세션이 존재함<br />");
} else{
	out.print("유효한 세션이 존재xxxxxxxxxxxxxxxxxx<br />");
}

out.print("==========================================================================<br />");

session.invalidate();

if(request.isRequestedSessionIdValid()){
	out.print("유효한 세션이 존재함<br />");
} else{
	out.print("유효한 세션이 존재xxxxxxxxxxxxxxxxxx<br />");
}

%>    
