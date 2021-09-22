<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	public String name = "홍길동";
%>
<%
	String address = "서울시"; 
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 표현식은 out.print()를 대체함
	out.print하면 나중에 쌍따옴표에다가 + 등을 적어야하고 번거롭다. -->

이름: <%= name %> <br /> <!-- out.print("이름"+name+"<br />"); -->
주소: <%= address %> <br />

</body>
</html>