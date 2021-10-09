<%@page import="kr.co.koo.izone.member.model.MemberDAO"%>
<%@page import="kr.co.koo.izone.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>    
    
<jsp:useBean id = "member" class = "kr.co.koo.izone.member.model.MemberVO" />
<jsp:setProperty name = "member" property = "*" />
    
<%
	
	
	MemberDAO dao = MemberDAO.getInstance();
	int rn = dao.insertMember(member);
	
	if(rn==1){%>    
		<script>
			alert('회원가입을 축하합니다.');
			location.href = '/izone';
		</script>	
	<%} else{%>
		<script>
			alert('히원가입 실패!!');
			location.href = '/izone';
		</script>
		
	<%} %>
    