<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.Random" import = "java.util.*" %>

<%!
private Random r = new Random();
List<Integer> lotto = new ArrayList<>();
%>

<%
	lotto.clear();
	while (lotto.size() < 6) {
		int num = r.nextInt(45) + 1;
		if (!lotto.contains(num)) {
			lotto.add(num);
		}
	}
	
	
	Collections.sort(lotto);
	//String lo = lotto.toString();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>로또번호 생성 결과</h1>

이번주 로또는 이 번호다!!<br />
<%-- lo --%>
<% 
for(int j=0;j<lotto.size();j++){
	out.print(lotto.get(j)+"&nbsp;");
	Thread.sleep(700);//cpu를 잠시 멈추는 메서드
	out.flush(); //브라우저의 출력버퍼를 비우는 메서드
}
%>

<br />


</body>
</html>