<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
	# error_page02.jsp
	요청처리과정에서 문제가 발생했습니다. <br/> 
	빠른시간내에 문제를 해결하겠습니다.
</p>

<p>
	<strong>잠시만</strong> 기다려주세오 ㅠㅠㅠㅠ<br/>
	진짜진짜 빨리 처리할게요 ㅠㅠㅠ<br/>
</p>

<p>
	예외클래스명: <em><%= exception %></em> <br/>
	예외클래스의가 가진 에러원인 메세지: <em><%= exception.getMessage() %></em>
</p>

</body>
</html>