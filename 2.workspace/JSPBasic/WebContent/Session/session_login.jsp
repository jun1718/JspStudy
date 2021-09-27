<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type = "text/css">
fieldset{
	width: 50%;
	align-content: center;
}
</style>

</head>
<body>
<%
if(session.getAttribute("user_id")==null){
%>
	<form action="session_login_ok.jsp" method="post">
		<fieldset>
			<legend>로그인 폼</legend>
			<input type="text" name="id" size="10px" placeholder="id"> <br />
			<!--  span은 div같은건데 자동으로 줄개행이 안일어나는 상자임 -->
			<input type="password" name="pw" size="10px"placeholder="pw"> <br />
			<input type="text" name="nick" size="10px" placeholder="별명"> <br />
			<input type="submit" value="로그인" />
		</fieldset>
	</form>
<%

} else{
	out.print("당신! 이미 로그인 했네! 세션값 남아있으니 로그인 할필요없어.");
	out.print("<a href = 'session_login_welcome.jsp'>로그인성공화면으로가기</a>");
}

%>
</body>
</html>