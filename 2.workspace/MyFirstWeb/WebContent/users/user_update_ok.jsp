<%@page import="kr.co.koo.izone.member.model.MemberVO"%>
<%@page import="kr.co.koo.izone.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("user_id");
	String name = request.getParameter("userName");
	String email = request.getParameter("userEmail");
	
	MemberVO member = new MemberVO();
	member.setUserId(id);
	member.setUserName(name);
	member.setUserEmail(email);	
	
	MemberDAO dao = MemberDAO.getInstance();
	int rn = dao.updateMember(member);
	
	if(rn == 1){
		session.setAttribute("user_name", member.getUserName());
	%>
		<script>
			alert("회원정보가 정상적으로 수정되었습니다.");
			location.href = "/izone";
		</script>
	<%} else{ %>
		<script>
			alert('회원정보 수정에 실패했습니다.');
			location.href = "/izone";
		</script>
	<%}
%>
    
    