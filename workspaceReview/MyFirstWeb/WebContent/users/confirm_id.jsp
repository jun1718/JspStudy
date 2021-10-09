<%@page import="kr.co.koo.izone.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:useBean id = "member" class = "kr.co.koo.izone.member.model.MemberVO"/>
<jsp:setProperty name = "member" property = "*" />

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("user_id");
	System.out.println("하아 confirm에서  잡아보자 : "+ id);
	
	MemberDAO dao = MemberDAO.getInstance();
	boolean flag = dao.confirmId(id);
	String str = null;
	
	if(flag){
		str = "NO";
		out.print(str);
		
		System.out.println("ID중복!!");
	} else{
		str = "YES";
		out.print(str);
		System.out.println("ID사용가능!!");
	}
	
	
%>