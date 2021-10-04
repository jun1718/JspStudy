<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%= session.getAttribute("user_name") %>(<%= session.getAttribute("user_id") %>)님 안녕하세요!</h3>
<a href = "update_form.jsp">회원정보 수정</a>&nbsp;
<a href = "delete_ok.jsp">회원 탈퇴</a>&nbsp;
<a href = "logout.jsp">로그아웃</a>

</body>
</html>