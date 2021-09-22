<%--@page import="java.text.SimpleDateFormat"--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" import = "java.text.SimpleDateFormat" %>
    
<%! 
//Date date = new Date();
//SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>

<%
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
String d =sdf.format(date);
%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

오늘은 <%= d %> 입니다2. <br />

</body>
</html>