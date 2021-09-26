<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Cookie[] cookies = request.getCookies();
String userName = null;
for(int i=0;i<cookies.length;i++){
	if(cookies[i].getName().equals("id_cookie")){
		userName = cookies[i].getValue();
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


웰컴~~  <%= userName %>님의 로그인을 축하합니다 ^__^  <br />
<a href = "cookie_login.jsp">다시 로그인하러가기</a>


</body>
</html>