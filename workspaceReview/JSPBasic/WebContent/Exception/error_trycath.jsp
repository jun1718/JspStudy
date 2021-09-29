
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
%>    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% try{%>
		<h4><%= id.toLowerCase() %></h4>
	<%} catch(Exception e){%>
		에이 젠장! <br />
		이건 또 무슨 에러야 ㅡㅡ <br />
		네네 고객님 오늘 저 야근하겠습니다. 좀 봐주세요 <br />
		예외 클래스명: <%= e %> <br />
		에러내용 : <%= e.getMessage() %>
	<% }%>
</body>
</html>
