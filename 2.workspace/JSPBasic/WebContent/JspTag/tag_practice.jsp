<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Random" %>
    
<%! 
	//Declaration
	//jsp파일에서 사용할 멤버변수, 메서드를 선언할때 사용
	
	public int total;
	public String color;
	public int num;
	public Random r = new Random();
	
	public int randomNumber(){
		//랜덤정수 1~10까지를 발생시켜서 리턴
		num = r.nextInt(10)+1;
		return num;
	}
	
	
	public String randomColor(){		
		/*
		0.0이상 1.0미만의 실수 난수를 발생시켜서 난수값이 0.66이상이면 "빨강"을 0.33 이상이면
		"노랑", 그 이외에는 "파랑"을 리턴
		*/
		double num = r.nextDouble();
		
		if(num>=0.66){
			color = "빨강";
		} else if(num>=0.33){
			color = "노랑";
		} else{
			color = "파랑";
		}
		
		return color;
	}
	
%>

<%
	total++;
	int each=0;
	each++;
	
	num = randomNumber();
	color = randomColor();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>오늘의 운세!</h1>

페이지 누적요청수: <%= total%>, 페이지 개별 요청수: <%= each%> 

<h2>오늘의 행운의 숫자와 행운의 색깔</h2>

<p>
행운의 숫자: <strong><%= num%></strong> <br />
행운의 색깔: <em><%= color%></em> 
</p>

</body>
</html>