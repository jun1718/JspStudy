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
		String name = (String)session.getAttribute("user_name");
	%>
	<h3><%= name %>님의 회원가입이 정상처리되었습니다.</h3>
	<a href = "login_form.jsp">로그인 페이지로</a>
</body>
</html>