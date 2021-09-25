<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String bf = request.getParameter("bf");
	String lunch = request.getParameter("lunch");
	String dinner = request.getParameter("dinner");
%>

<h2>요청파라미터 읽기연습!!</h2>

-아침밥: <%= bf %>	<br/>
-점심밥: <%= lunch %> <br/>
-저녁밥: <%= dinner %><br/>

</body>
</html>