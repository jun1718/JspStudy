<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int count = 0;
	if(application.getAttribute("visit")!=null){
		count = (Integer)application.getAttribute("visit");
	}
	count++;
	application.setAttribute("visit", count);
%>

<hr/><h3>방문자 수 : <%= count %></h3><hr/>

