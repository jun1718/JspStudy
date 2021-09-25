<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
	<form action = "req_album_result.jsp">
	
	<table border = "1">
	<tr>
		<td>
		선택
		</td>
		<td>
		앨범커버사진
		</td>
		<td>
		가수이름
		</td>
		<td>
		앨범제목
		</td>
		<td>
		발매일자
		</td>
	</tr>
	<tr>
		<td>
		<input type = "radio" name = "group">
		</td>
		<td>
		<img src = "01.jpg" width = "200px" height = "200px"
		alt = "티아라">
		</td>
		<td>
		티아라
		</td>
		
		<td>
		뽀삐뽀삐
		</td>
		<td>
		21.09.24
		</td>
	</tr>
	<tr>
		<td>
		<input type = "radio" name = "group">
		</td>
		<td>
		<img src = "02.jpg" width = "200px" height = "200px"
		alt = "소녀시대">
		</td>
		<td>
		소녀시대
		</td>
		<td>
		기억의 습작
		</td>
		<td>
		21.09.25
		</td>
	</tr>
	<tr>
		<td colspan = "5">
		<input type = "submit" value = "확인">
		</td>
	</tr>
	</table>
	</form>
	</div>
</body>
</html>