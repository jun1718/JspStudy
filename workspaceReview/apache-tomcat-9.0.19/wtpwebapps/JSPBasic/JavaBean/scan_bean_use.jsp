<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id = "scan" class = "kr.co.jspbasic.scan.ScanBean" scope = "request" />
	
	#국어: <Strong><jsp:getProperty name = "scan" property = "kor" />	</Strong> 점<br />
	#영어: <Strong><jsp:getProperty name = "scan" property = "eng" />	</Strong> 점<br />
	#수학: <Strong><jsp:getProperty name = "scan" property = "math" /></Strong> 점<br />
	#총점: <Strong><jsp:getProperty name = "scan" property = "tot" /></Strong> 점<br />
	#평균: <Strong><jsp:getProperty name = "scan" property = "avg" /></Strong> 점<br />
	
	

</body>
</html>