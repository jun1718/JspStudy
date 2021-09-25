<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String encoding = response.getCharacterEncoding();
out.print(encoding);
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action = "res_basic02.jsp" align = "center" method = "post">
-나이: <input type = "text" name = "age"/> <br/>
<input type = "submit" value = "전송"/> 
</form>
</body>
</html>