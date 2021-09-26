<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
     
<%

	Cookie[] cookies = request.getCookies();
	boolean flag = false;
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("peanut_cookie")){
			flag = true;
			break;
		}
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>땅콩쿠키의 유효시간이 지났는지 확인해드릴게요~!</h3>
<%if(flag){ %>
땅콩쿠키의 유효시간은 아직 지나지 않았어요!
그러니까 제가 작동하겠죠?		
<%} else{%>
저런,,,! 땅콩쿠키의 유효시간이 지났어요!
다시 충전하고 오세요! 충전하는 방법은 make 페이지에서 새로고침해서 다시 쿠키를 만드는거예요!
<%}%>

<a href = "cookie_check_all.jsp">모든 쿠키보기~</a>
<hr/>
<a href = "cookie_make.jsp">다시 첫페이지로 가기!</a>
</body>
</html>