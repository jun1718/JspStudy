<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.*" %>    
    
    
<%
	
	UUID uuid = UUID.randomUUID();
	System.out.println(uuid);
	
	String[] uuids = uuid.toString().split("-");
	
	System.out.println(Arrays.toString(uuids));
	System.out.println(uuids[1]);
	
	session.setAttribute("auth_code", uuids[1]);
	//session.setMaxInactiveInterval(60); 1분지나면 유효시간지나서 만료됨
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 
	<h2>회원 인증페이지</h2>
	<h1>인증문자: <del><%= uuids[1] %></del></h1>
	<form action="concert_auth_check.jsp" method = "post">
		<small>위의 인증문자를 입력해주세요! 1분이 지나면 의미없습니다.</small>
		<input type="text" name="code" size="5">
		<input type="submit" value="확인">
	</form>


</body>
</html>