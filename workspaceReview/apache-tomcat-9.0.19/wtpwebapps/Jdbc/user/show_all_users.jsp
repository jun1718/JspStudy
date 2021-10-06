<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "kr.co.koo.jdbc.user.model.UserDAO" %>
<%@ page import = "kr.co.koo.jdbc.user.model.UserVO" %>
<%@ page import = "java.util.*" %>
    
<%
	UserDAO dao = UserDAO.getInstance();
	List<UserVO> userList = dao.userSelectAll();
	
	for(int i=0;i<userList.size();i++){
		out.print("이름 : "+userList.get(i).getName()+" "+
				"id : "+userList.get(i).getId()+" "+
				"pw : "+userList.get(i).getPw()+" "+
				"폰번 : "+userList.get(i).getPhone1()+" - "+userList.get(i).getPhone2()+" - "+userList.get(i).getPhone3()+" "+
				"성별: "+userList.get(i).getPw()+"<br />");
		
		
	}
%>    
    