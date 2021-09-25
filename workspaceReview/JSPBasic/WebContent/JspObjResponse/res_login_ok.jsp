<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>

<%
if(id.equals("abc1234")){
	if(pw.equals("xyz9876")){
		response.sendRedirect("res_welcom.jsp");
	} else{
		response.sendRedirect("res_pw_fail.jsp");
	}
} else{
	response.sendRedirect("res_id_fail.jsp");
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