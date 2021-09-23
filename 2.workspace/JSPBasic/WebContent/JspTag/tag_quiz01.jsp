<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Random" trimDirectiveWhitesapces = "true"%>
    
<%!
private int total;
private Random r = new Random();

public int randomDan(){
	return r.nextInt(8)+2;
}

public boolean checkTotal(){
	if(total%10==0){
		return true;
	}
	return false;
}
%>
<% 
total++;
int num = randomDan();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

페이지 누적 요청수 : <%= total %> <br />
매 <strog>10</strog>번째 방문자에게는 기프티콘을 드립니다. <br />
<% 
if(checkTotal()) out.print("당첨되셨습니다!!");	
%> 
<hr />

<h1>랜덤 구구단(<%=num%>단) </h1>

<p>이번에 나온 구구단은 <%=num%>단입니다.</p>

<%for(int hang=1;hang<10;hang++){
	int result = num*hang;
%>

<%=num%> x <%=hang%> = <%=result%> <br />
<%} %>


</body>
</html>