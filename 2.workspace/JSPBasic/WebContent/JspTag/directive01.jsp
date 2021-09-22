<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.io.*" import = "java.util.*"%>
    
<%-- 외부패키지 임포트 방법 --%>
<%--@ page import = "java.util.Date" 이렇게도 되고 위에서 넣어도됨--%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	//java.util.Date date = new java.util.Date();
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	String dayInfo = sdf.format(date);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

오늘은 <%= dayInfo %>

</body>
</html>