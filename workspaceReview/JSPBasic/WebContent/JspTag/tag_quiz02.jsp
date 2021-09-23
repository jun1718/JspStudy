<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.List" import = "java.util.ArrayList" 
	import = "java.util.Collections"%>
	
<%
List<Integer> lotto = new ArrayList<>();

while(lotto.size()<6){
	int r = (int)((Math.random()*46)+1);
	if(!lotto.contains(r)) lotto.add(r);
	Collections.sort(lotto);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>로또번호 생성결과</h1>
이번주 로또는 이 번호다!! <br />
<%
for(int i=0;i<lotto.size();i++){
	out.write(lotto.get(i)+"&nbsp");
	Thread.sleep(700);
	out.flush();
}
%>

</body>
</html>