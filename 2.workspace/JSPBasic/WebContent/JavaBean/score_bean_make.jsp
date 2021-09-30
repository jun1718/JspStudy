<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id = "user" class = "kr.co.jspbasic.user.ScoreBean" scope = "request" />
<jsp:setProperty name = "user" property = "*" />

<%
	int tot = user.getKor() + user.getEng() + user.getMath();
	double avg = tot / 3.0;
%>


<jsp:setProperty name = "user" property = "tot" value = "<%= tot %>" />
<jsp:setProperty name = "user" property = "avg" value = "<%= avg %>" />
 
 
<%--
	
	액션태그를 사용하여 ScoreBean의 객체를 request범위로 생성하시고
	setProperty를 사용하여 객체 내부 데이터에 파라미터데이터를 셋팅한 뒤
	파라미터데이터 3개와 총점, 평균을 구하여 5개를 모두 객체에 포장하여
	score_bean_use.jsp로 전송(포워딩)하세요.
--%>

<jsp:forward page = "score_bean_use.jsp" />

</body>
</html>