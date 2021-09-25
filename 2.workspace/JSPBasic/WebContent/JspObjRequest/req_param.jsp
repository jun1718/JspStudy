<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
*요청 파라미터(request parameters)
-클라이언트 측에서 서버로 데이터를 요청할때 전달되는 값들을 담은 변수를 요청 파라미터라고 부름
-요청 파라미터는 URL 주소 뒤에 ?를 붙인이후 [파라미터변수명=값]의 형식을 통해 서버로 데이터를
전달합니다.
-요청파라미터를 여러개 전달할때는 &기호를 통해 나열합니다.
 --%>    

<%
//클라이언트에서 전송된 요청파라미터의 값을 읽는 방법
//내장객체 request의 메서드 getParameter(파라미터의 이름)
String br = request.getParameter("bf");
String lunch = request.getParameter("lunch");
String dinner = request.getParameter("dinner");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>요청 파라미터 읽기 연습!!!</h2>

<p>
-아침밥: <%= br %> <br/>
-점심밥: <%= lunch %><br/>
-저녁밥: <%= dinner %><br/>
</p>

</body>
</html>