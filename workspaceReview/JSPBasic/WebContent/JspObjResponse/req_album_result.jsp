<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String group = request.getParameter("group");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
if(group.equals("티아라")){
	response.sendRedirect("req_tiara.jsp");
} else if(group.equals("소녀시대")){
	response.sendRedirect("req_girls.jsp");
} else{
	out.print("즐! 그런 그룹 여긴 없거든! 흥!");
}
%>


</body>
</html>