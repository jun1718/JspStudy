<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
%>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String nick = request.getParameter("nick");

if(id.equals("k1") && pw.equals("1")){
	session.setAttribute("user_id", id);
	session.setAttribute("nick", nick);
	response.sendRedirect("session_login_welcome.jsp");
} else{	
	response.sendRedirect("session_login.jsp");
}
%>

    