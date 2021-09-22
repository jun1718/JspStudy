<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>이클립스로 jsp 작업하기!</h1>
<h2>이클립스로 jsp 작업하기!</h2>

<%for (int i=0;i<3;i++){%>

<a href = "http://www.naver.com">네이버로 이동해버리기~~</a> <br />

<%} %>

안녕안녕?? <br />
<b>HTML 시작합니다.</b>
<p>JSP2일차 시간입니다.</p>

크크크크 오늘은 2019 4월 17일이지롱<br />


<%
/*
for(int hang=1;hang<10;hang++){
	out.print("2 x "+hang+" = "+2*hang+"<br />");
	out.write("<br />");
}
*/

for(int dan=2;dan<10;dan++){
	if(dan%2==0) continue;
	for(int hang=1;hang<10;hang++){
		out.print(dan+" x "+hang+" = "+dan*hang+"<br />");
	}
}
%>

</body>
</html>