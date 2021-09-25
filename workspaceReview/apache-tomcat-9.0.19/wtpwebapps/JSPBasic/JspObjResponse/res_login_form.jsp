<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type = "text/css">
	.log_btw{
		background-color : yellow;
		width : 100%;
		height : 60px;
		font-family : cursive;
		padding : 2px;
	}

</style>

</head>
<body>

<div align = "center" style = "border: 5px dashed blue; width: 100%; padding: 15px;">
<h3>로그인 연습!</h3>
<form action = "res_login_ok.jsp" method = "post">
<table border = "1">
	<tr>
		<td><input type = "text" name = "id" placeholder = "id를 입력" size = "10px"/></td>
		<td rowspan = "2"><input class = "log_btw" type = "submit" value = "로그인 " height = "100%"></td>
	</tr>
	<tr>
		<td><input type = "text" name = "pw" placeholder = "pw를 입력" size = "10px"/></td>
	</tr>
</table>
</form>
</div>

</body>
</html>