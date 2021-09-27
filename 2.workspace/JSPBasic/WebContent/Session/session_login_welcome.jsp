<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


/*
	1.로그인하지 않은 사용자가 주소창에 이 페이지의 URL을 적고 들어왔을 경우 로그인창으로 돌려보내는
		코드를 작성하세요.
		
		
		
	2.로그인한 회원의 아이디와 별명을 통해 "nick(id)님 환영하세요"를 출력하세요
	
	3.a태그로 로그인창으로 돌아가는 링크와 request 폴더에 앨범페이지로 
	갈 수 있는 링크 2개를 작성하세요.
*/
	if((String)session.getAttribute("user_id") == null){
		response.sendRedirect("session_login.jsp");	
	}
		
	String userId = (String)session.getAttribute("user_id");
	String userNick = (String)session.getAttribute("user_nick");
	
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%= userNick %>(<%= userId %>)님 환영해요~~! <br />
	<a href = "session_login.jsp">로그인창으로 돌아가기</a> <br />
	<a href = "../JspObjRequest/req_album.jsp">앨범 페이지로 가기</a><br />
  	<a href = "session_logout.jsp">로그아웃</a> <br />

	<%@ include file = "../Application/app_basic.jsp" %>  	
	<hr/><h3>방문자 수 : <%= count %></h3><hr/>
</body>
</html>

