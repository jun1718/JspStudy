<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String cm = request.getParameter("cm");
	double m = Double.parseDouble(cm)*0.01;
	double kg = Double.parseDouble(request.getParameter("kg"));
	double bmi = Math.round((kg / (m * m))*1000) / 1000.0;
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>체질량 지수(BMI) 계산</h1>

<p>
	- 신장: <%= cm %><br/>
	- 체중: <%= kg %><br/>
	BMI 지수 : <%= bmi %><br/>
	<% 
	if(bmi > 23){
		out.print("당신은 과체중입니다.<br/>");
	} else if(bmi >= 18.5){
		out.print("당신은 정상입니다.<br/>");
	} else{
		out.print("당신은 저체중입니다.<br/>");
	}
	%>
</p>


</body>
</html>