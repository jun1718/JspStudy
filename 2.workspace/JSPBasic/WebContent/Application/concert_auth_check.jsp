<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String code = request.getParameter("code");

	

	if(code.equals(session.getAttribute("auth_code"))){
		session.setAttribute("auth_pass", true);	
		response.sendRedirect("concert_reserve.jsp");
	} else{
%>

<script type = "text/javascript">
	alert("인증코드가 일치하지 않습니다. 다시 인증해 주세요.");
	history.back();
</script>

<%		
	}
%>   