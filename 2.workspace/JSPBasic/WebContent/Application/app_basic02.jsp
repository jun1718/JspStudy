<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%
	
	int albumCount = 0;
	if(session.getAttribute("albumVisit")!=null){
		albumCount = (Integer)session.getAttribute("albumVisit");	
	}
	albumCount++;
	
	session.setAttribute("albumVisit", albumCount);
	
%>    


