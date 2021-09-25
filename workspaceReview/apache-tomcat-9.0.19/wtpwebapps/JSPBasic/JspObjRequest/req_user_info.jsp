<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Arrays"%>
    
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String gender = request.getParameter("gender");
String[] hobbys = request.getParameterValues("hobby");
String region = request.getParameter("region");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

#이름 : <%= name %> <br/> 
#ID : <%= id %> <br/> 
#PW : <%= pw %> <br/> 
#성별 : <%= gender %> <br/> 
#취미 :  <%= Arrays.toString(hobbys) %> <br/> 
#지역 : <%= region %> <br/>
 
</body>
</html>