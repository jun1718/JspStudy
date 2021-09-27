<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int count = 0;
	if(session.getAttribute("visit2")!=null){
		count = (Integer)session.getAttribute("visit2");
	}
	count++;
	session.setAttribute("visit2", count);
%>

<hr/><h3>방문자 수 : <%= count %></h3><hr/>

