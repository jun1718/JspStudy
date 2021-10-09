<%@page import="kr.co.koo.jdbc.user.model.UserVo"%>
<%@page import="kr.co.koo.jdbc.user.model.UserDAO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	UserDAO dao = UserDAO.getInstance();
	List<UserVo> userList = dao.userSelectAll();
	
	for(UserVo user : userList){
		String name = user.getName();
		String id = user.getId();
		String pw  = user.getPw();
		String phone = user.getPhone1()
				+"-"+user.getPhone2()
				+"-"+user.getPhone3();
		String gender = user.getGender();

		out.print("이름: "+ name + " 아이디: " + id + " 비번: " + pw + 
				" 전번: " + phone + " 성별: " + gender+"<br />");
		
	}

%>    
    