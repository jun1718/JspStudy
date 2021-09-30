<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id = "scan" class = "kr.co.jspbasic.scan.ScanBean" scope = "request" />
	<jsp:setProperty name = "scan" property = "*" />
	
	<%
		int tot = scan.getKor() + scan.getEng() + scan.getMath();
		double avg = tot/3.0;
	%>
	
	<jsp:setProperty name = "scan" property = "tot" value = "<%= tot %>" />
	<jsp:setProperty name = "scan" property = "avg" value = "<%= avg %>" />
	
	<jsp:forward page = "scan_bean_use.jsp" />
	
</body>
</html>