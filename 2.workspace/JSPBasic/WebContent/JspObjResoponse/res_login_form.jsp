<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type = "text/css">
	.login_btn{
		background-color: yellow;
		width: 60px;
		height: 50px;
		font-family: cursive;
		padding: 2px;
	}
</style>
	
</head>
<body>
	<div align="center" style = "border: 20px dashed red; width : 80%; padding: 15px">
		<h3>sendRedirect 로그인 연습</h3>
		<form action="res_login_ok.jsp" method="post">
			<table border="1">
				<tr>
					<td><input type="text" name="id" size="10px" placeholder="ID를 입력!" /></td>
					<td rowspan = "2"><input class = "login_btn" type="submit" value="로그인" /></td>
					<br />
				</tr>
				<tr>
					<td><input type="password" name="pw" size="10px" placeholder="PW를 입력!"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>