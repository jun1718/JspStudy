<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
private int visit;
%>

<%
visit++; //이건변화
int request1 = 0;
request1++; //이건 그대로임 메소드니까 계속 1

int num = (int)((Math.random()*10)+1);
double colorNum = Math.random();

String color;

if(colorNum>=0.66) color = "빨강";
else if(colorNum>=0.33) color = "노랑";
else color = "파랑";
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>오늘의 운세!</h1>
페이지 누적요청수: <%= visit %>, 페이지 개별 요청수 <%= request1 %>: 
<h2>오늘의 행운의 숫자와 행운의 색깔</h2>

행운의 숫자 : <%= num %><br />
행운의 색깔: <%= color %><br />

 

</body>
</html>