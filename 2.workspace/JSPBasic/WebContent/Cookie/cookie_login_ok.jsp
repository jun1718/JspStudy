<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	request.setCharacterEncoding("utf-8");		
	//앞에서 체크를 하면 3개의 요청파라미터가 넘어오는것이고 체크선택 안하면 2개의 요청파라미터가 넘어옴
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String check = request.getParameter("remember_id");	
	//체크했던사람은 yes가 담긴 객체의 주소가 오고 안한사람은 null이 옴
	
	
	
	if(id.equals("abc1234") && pw.equals("aaa1111")){
		Cookie idCookie = new Cookie("id_cookie", id);
		idCookie.setMaxAge(5);
		//idCookie.setMaxAge(60*60*24*30); //초단위의 유효시간을 한달로설정하는법 직관적
		response.addCookie(idCookie);
	
		if(check != null){
			Cookie idMemory = new Cookie("remember_id", id);
			idMemory.setMaxAge(10);
			response.addCookie(idMemory);
		}

		response.sendRedirect("cookie_login_welcome.jsp");
	}else{
		response.sendRedirect("cookie_login.jsp");
	}
%>  
  
