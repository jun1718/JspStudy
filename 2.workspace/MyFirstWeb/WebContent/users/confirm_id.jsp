<%@page import="kr.co.koo.izone.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	String userId = request.getParameter("user_id");

	out.print(userId);
	MemberDAO dao = MemberDAO.getInstance();
	
	boolean flag = dao.confirmId(userId);
	System.out.print(flag);
	
	String str = "";
	
	if(flag){
		str = "NO";
		out.print(str);
		
		System.out.println("ID중복!!");
		System.out.println(str);
	} else {
		str = "YES";
		out.print(str);
		System.out.println("ID사용 가능!!");
		System.out.println(str);
	}
%>
