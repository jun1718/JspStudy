<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

String cm = request.getParameter("cm");
String kg = request.getParameter("kg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>체질량 지수(BMI) 계산 </h2>
<hr/>

<p>
- 신장: <%= cm %><br/>
- 체중: <%= kg %><br/>
</p>

<p>
<%
double m = Double.valueOf(cm)*0.01;
double bmi = Double.valueOf(kg) / (m * m);
bmi = Math.round(bmi*1000)*0.001;
//bmi = Math.round(bmi*1000)/1000.0;
%>
BMI 지수 : <%= bmi %> <br/>

<%
if(bmi > 23) out.print("당신은 과체중입니다.<br/>");
else if (bmi < 18.5) out.print("당신은 저체중입니다.<br/>");
else out.print("당신은 정상체중입니다.<br/>");
%> 

할루 출력종료~
</p>

</body>
</html>