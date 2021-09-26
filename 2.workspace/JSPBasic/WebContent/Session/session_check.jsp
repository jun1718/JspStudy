<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Arrays"%>
    
<%
/*
-세션에 저장된 데이터는 브라우저 창이 종료될때까지 혹은 세션의 유효시간이만료되기 전까지 웹 어플리케이션의 모든
jsp페이지에서 사용할수있음

-세션에 저장된 데이터를 가져오려면 session객체의 getAttribute()메서드를 사용하여 매개값으로 가져올
데이터의 세션명을 적음
*/

	String nick = (String)session.getAttribute("nickname");
	String[] hobbys = (String[])session.getAttribute("hobbys");
	
	out.print(nick+"<br/>");
	out.println(Arrays.toString(hobbys)+"<br/>");
	
	out.print("===================================<br/>");
	
	//세션의 유효시간 설정 1800초로 나온다. 30분임 디폴트값이
	
	/*
	int sTime = session.getMaxInactiveInterval();
	out.println("세션의 유효시간: " +sTime+"초<br/>");
	out.print("===================================<br/>");
	*/
	
	//세션의 유효시간 디폴트값  1시간으로 변경
	session.setMaxInactiveInterval(60*60);
	
	int sTime = session.getMaxInactiveInterval();
	out.println("세션의 유효시간: " +sTime+"초<br/>");
	out.print("===================================<br/>");
	
	
	//특정세션 데이터(특정 이름을 가진 데이터) 삭제
	session.removeAttribute("nickname");
	nick = (String)session.getAttribute("nickname");
	out.println("삭제 후 섹션객체의 데이터 nickname의 값: "+nick+"<br/>");
	out.println("삭제되지 않은 섹션객체의 데이터 hobbys의 값: "+Arrays.toString(hobbys));
	
	if(request.isRequestedSessionIdValid()){
		out.println("유효한 세션이 존재함");
	} else{
		out.println("유효한 세션이 존재하지 않음.");
	}
	out.print("===========================================<br/>");
	
	//모든 세션데이터 삭제 및 세션에 데이터가 남아있는지 확인
	session.invalidate();
	if(request.isRequestedSessionIdValid()){
		out.println("유효한 세션이 존재함");
	} else{
		out.println("유효한 세션이 존재하지 않음.");
	}
	
%>    
