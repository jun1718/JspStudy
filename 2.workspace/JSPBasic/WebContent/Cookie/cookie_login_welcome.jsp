<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie[] cookies = request.getCookies();
	String userId = null;
	
	
	for(Cookie c : cookies){
		out.print(c.getName() + "<br/>");
		if(c.getName().equals("id_cookie")){
			userId = c.getValue();
			//break;//여기서 이걸하면 제일 먼저 추가된 id_cookie만 보이고 뒤에 쿠키들은보이지않음
		}
	}
	out.print("==========================<br/>");

	if(userId != null){
		out.println("<p>"+userId+"님 환영합니다.</p>");
		out.println("<a href = 'cookie_login.jsp'>로그인화면으로 돌아가기.</a>");
	} else{
		out.println("시간이 지나 자동 로그아웃 처리되었습니다.<br/>");
		out.println("<a href = 'cookie_login.jsp'>다시 로그인하기.</a>");
	}
%>    
