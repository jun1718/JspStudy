<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Cookie[] cookies = request.getCookies();
boolean loginFlag = false;
String userId = "";

if(cookies!=null){
	for(int i=0;i<cookies.length;i++){
		//if(cookies[i].getName().equals("id_cookie")){
		//	loginFlag = true;
		//}

		if(cookies[i].getName().equals("id_remember")){
			userId = cookies[i].getValue();	
		
		}
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

<div align = "center">
<form action = "cookie_login_ok.jsp" method = "post">

<%if(!loginFlag){%>

<p>
<input type = "text" name = "id" size = "10px" placeholder = "ID입력" value = "<%= userId %>" /> <br />
	<input type = "checkbox" name = "id_remember" value = "yes"> <small>아이디 기억하기 <br /></small> 
<input type = "password" name = "pw" size = "10px" placeholder = "PW입력" /> <br />
<input type = "submit" value = "로그인" size = "10px" /> <br />
 </p>

<%} else{
	out.print("아직 로그인 쿠키가 남아있습니다.<br />아직까지는 다시 로그인할 필요없이 자동으로 됩니다.<br />");
	out.print("<a href = 'cookie_login_welcome.jsp'>로그인 성공화면으로 가기</a>");
}
%>





</form>
</div>


</body>
</html>