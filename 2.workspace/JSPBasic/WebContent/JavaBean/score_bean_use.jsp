<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
	score_bean_make에서 전송된 ScoreBean객체를 활용하여
	5가지 데이터를 브라우저에 출력하세요.
 --%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "user" class = "kr.co.jspbasic.user.ScoreBean" scope = "request" />

#국어 : <jsp:getProperty name = "user" property = "kor" /> <br />
#영어 : <jsp:getProperty name = "user" property = "eng" /> <br />
#수학 : <jsp:getProperty name = "user" property = "math" /> <br />
#총점 : <jsp:getProperty name = "user" property = "tot" /> <br />
#평균 : <jsp:getProperty name = "user" property = "avg" /> <br />



</body>
</html>