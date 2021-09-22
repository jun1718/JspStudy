<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% for(int i=0; i<2; i++){%>

<h2>이클립스와 톰캣으로 JSP파일 렌더링하기~~</h2>

<p>
안녕하세요. 오늘은 2019년 4월 17일 수요일입니다. <br />
<i>스크립트릿 연습을 하고 있습니다.</i>
</p><hr />

<%} %>

<h2>구구단 2단</h2> <hr />

<%
	for(int hang=1;hang<=9;hang++){
		//out.print 메서드는 브라우저에 출력을 실행하는 메서드임
		//System.out.println 은 시스템에 출력(콘솔에 출력)
		out.println("2x"+hang + " = " + (2*hang) + "<br />");
	}

%>

<h2>구구단에서 홀수단만 출력합니다.</h2>

<%
	for(int dan=2;dan<=9;dan++){
		if(dan % 2 == 0) continue;
		for(int hang=1;hang<=9;hang++){
			out.println(dan + " x " + hang + " = " + dan*hang
					+ "<br />");
		}
	}
%>



</body>
</html>