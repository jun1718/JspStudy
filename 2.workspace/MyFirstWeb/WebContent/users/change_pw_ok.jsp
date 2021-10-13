<%@page import="kr.co.koo.izone.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("utf-8");
	String oldPw = request.getParameter("oldPw");
	String newPw = request.getParameter("newPw");
	
	String id = (String)session.getAttribute("user_id");
	if(id == null) response.sendRedirect("/izone");
	
	MemberDAO dao = MemberDAO.getInstance();
	
	int rn = dao.userCheck(id, oldPw);
	
	if(rn == MemberDAO.LOGIN_FAIL_PW){%>
		<script>
			alert('현재 비밀번호를 확인하세요.');
			history.back();
		</script>	
	<%} else{
		rn = dao.changePassword(id, newPw);
		if(rn==1){%>
			<script>
				alert('비밀번호가 정상적으로 변경되었습니다.');
				location.href = "/izone";
			</script>
		<% }
	}
%>    
    