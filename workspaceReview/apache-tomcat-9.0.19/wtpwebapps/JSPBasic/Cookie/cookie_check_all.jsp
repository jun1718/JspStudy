<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
Cookie[] cookies = request.getCookies();
for(int i=0;i<cookies.length;i++){
	out.print("쿠키의 이름: "+cookies[i].getName()+"<br />");
	out.print("쿠키의 값: "+cookies[i].getValue()+"<br />");
	out.print("============================================<br />");
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>