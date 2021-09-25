<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action = "req_user_info.jsp">
-이름: <input type = "text" name = "name" /> <br/>
-ID: <input type = "text" name = "id" /><br/>
-PW: <input type = "password" name = "pw" /><br/>

-성별: <input type = "radio" name = "gender" value = "남자"> 남성 &nbsp;
		<input type = "radio" name = "gender" value = "여자"> 여성 <br/>
 
-취미: 
<input type = "checkbox" name = "hobby" value = "축구"> 축구  &nbsp;
<input type = "checkbox" name = "hobby" value = "독서"> 독서  &nbsp;
<input type = "checkbox" name = "hobby" value = "수면"> 수면  &nbsp;
<input type = "checkbox" name = "hobby" value = "음악감상"> 음악감상  <br />

-지역:
<select name = "region">
	<option>서울</option>
	<option>경기</option>
	<option>부산</option>
	<option>제주</option>
</select> <br/>

<input type = "submit" value = "확인">
</form>

</body>
</html>