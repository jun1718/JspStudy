<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%

	Cookie[] cookies = request.getCookies();

	boolean isLogin = false;
	String userId = ""; 
	
	if(cookies != null){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("remember_id")){
				userId= cookies[i].getValue();
			}
			/*	//아이디기억하는지 테스트하기위해 잠시 끈다.
			if(cookies[i].getName().equals("id_cookie")){
				isLogin = true;
			}
			*/
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


<%
if(!isLogin){
%>
	<form action="cookie_login_ok.jsp" method="post">

		
		<input type="text" name="id" size="10px" placeholder="ID입력" value="<%= userId %>" /><br />		
		<input type="checkbox" name="remember_id" value="yes" /> <small>아이디
			기억하기</small> <br />
		<!-- 글씨크기를 일반에 대해 약 70%정도 작게 만들어주는 태그 -->
		<input type="password" name="pw" size="10px" placeholder="PW입력" /><br />
		<input type="submit" value="로그인" />
	</form>

<%
} else{
	out.print("이미 로그인한 사용자입니다.<br/>");
	out.print("<a href = 'cookie_login_welcome.jsp'>웰컴 페이지로~ </a>");
}
%>

</body>
</html>