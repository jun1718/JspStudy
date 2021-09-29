<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--
	*jsp action tag 사용법
		-<jsp:forward 속성=값, ....> </jsp:forward>
		-e닫는 태그는 태그 내부에 추가적으로 종속된 태그가 없다면 닫는 태그를 생략하고
		열린 태그 끝부분은 />로 마감할수 있음
		ex)<jsp:forward 속성=값,... />
 --%>    
    
<jsp:forward page = "forward_ex02.jsp"></jsp:forward>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>forward_ex01페이지입니다.</h3>
	<p>포워드 기능에 의해 이 메시지를 보실수 없습니다.</p>

</body>
</html>