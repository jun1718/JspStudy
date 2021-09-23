<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page trimDirectiveWhitespaces="true" %>
   
<%!
private int total;

public boolean checkTot(){
	if(total%10==0) return true; 
	return false;
}
%>

<%
total++;
boolean check = checkTot();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

페이지 누적 요청수 : <%= total %><br/>
매 10번째 방문자에게는 기프티콘을 드립니다. <br/>
<%
if(checkTot()) {
	out.print("당첨되셨습니다!!");
}
%>
<hr />

<h1>랜덤 구구단(단)</h1>
<%
int dan = (int)((Math.random()*8)+2);
%>
<p>이번에 나온 구구단은 <%= dan %>단입니다.<p>  

<% for(int hang=1;hang<=9;hang++){%>
<%= dan %> x <%= hang %> = <%= dan * hang %> <br />
<% }%>

</body>
</html>