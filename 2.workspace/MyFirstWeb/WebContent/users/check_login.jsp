<%@page import="kr.co.koo.izone.member.model.MemberVO"%>
<%@page import="kr.co.koo.izone.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");

	MemberDAO dao = MemberDAO.getInstance();
	MemberVO member = dao.getMemberInfo(id);
	
	int rn = dao.userCheck(id, pw);
	
	String str = "";
	
	if(rn== MemberDAO.LOGIN_FAIL_ID){
		str = "NOT_ID";
	}else if(rn == MemberDAO.LOGIN_FAIL_PW){ 
		str = "NOT_PW";
	}else{		
		str = "LOGIN_OK";
		session.setAttribute("user_id", id);
		session.setAttribute("user_name", member.getUserName());
	}
	
	out.print(str);
%>    
    
   