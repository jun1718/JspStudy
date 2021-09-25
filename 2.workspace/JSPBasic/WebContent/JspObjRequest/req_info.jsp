<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
StringBuffer reqUrl = request.getRequestURL();
String reqUri = request.getRequestURI();
String protocol = request.getProtocol();
String conPath = request.getContextPath(); //root폴더
int serverPort = request.getServerPort();
String userIP = request.getRemoteAddr();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>
# 요청 URL: <%= reqUrl %> <br />
# 요청 URI: <%= reqUri %> <br />
# 요청 protocol: <%= protocol %> <br />
# 요청 context path: <%= conPath %> <br />
# 요청 server port: <%= serverPort %> <br />
# 요청 user ip: <%= userIP %> <br />

</p>

</body>
</html>