<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align=center>
<form action = "req_album_result.jsp">
<table border ="1" >
	<tr>
		<td></td>
		<td>앨범 커버</td>
		<td>가수</td>
		<td>앨범 제목</td>
		<td>발매일</td>
	</tr>
	<tr>
		<td><input type = "radio" name = group value = "티아라"></td>
		<td align = "center"><img src = "01.jpg" width = "200px" height = "200px" alt = "티아라임" /></td>
		<td >티아라</td>
		<td>다시한번</td>
		<td>2021.09.24</td>
	</tr>
	<tr>
		<td><input type = "radio" name = group value = "소녀시대"></td>
		<td align = "center"><img src = "02.jpg" width = "200px" height = "200px" alt = "소녀시대임" /></td>
						
		<td >소녀시대</td>
		<td>소녀시대의 소녀시대</td>
		<td>2021.09.23</td>
	</tr>
	<tr>
		<!--  td colspan="5"--> <!--5열을 병합하라는 의미. 근데 td를 5개아만들면 병합할것도 없지 않는가?-->
		
		<td colspan="5">
		<input type = "submit" value = "확인" />
		</td>
	</tr>
	

</table>
 
	<%@ include file = "../Application/app_basic02.jsp" %>  	
	<hr/><h3>방문자 수 : <%= albumCount %></h3><hr/>
</form>
</div>

</body>
</html>