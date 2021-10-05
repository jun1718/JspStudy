<%@page import="kr.co.koo.jdbc.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import = "java.sql.*" %>	

<%
	String id = (String)session.getAttribute("user_id");

	UserDAO dao = UserDAO.getInstance();
	int rn = dao.userDelete(id);
	
	if(rn == 1){
		session.invalidate();
		response.sendRedirect("login_form.jsp");
	} else{
		response.sendRedirect("login_welcome.jsp");
	}
	

	/*
	String sql = "DELETE FROM users WHERE id = '" + session.getAttribute("user_id") + "'";

	String url = "jdbc:mysql://localhost:3306/jsp_practice";
	String uid = "jsp";
	String upw = "jsp";

	Connection conn = null;
	Statement stmt = null;

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();
		int rn = stmt.executeUpdate(sql);

		if(rn == 1){
			out.print("<h3>삭제에 성공했습니다.</h3>");
			session.invalidate();
			out.print("<a href = 'login_form.jsp'>로그인페이지로 가기</a>");
		} else{
			out.print("<h3>삭제에 실패했습니다.</h3>");
			out.print("<a href = 'login_form.jsp'>로그인페이지로 가기</a>");
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (conn != null)
				conn.close();
			if (stmt != null)
				stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	*/
%>