<%@page import="kr.co.jspbasic.user.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id = "user" class = "kr.co.jspbasic.user.UserBean" scope = "request" />    

# 아이디: <jsp:getProperty name = "user" property = "id" /> <br/>
# 비밀번호: <jsp:getProperty name = "user" property = "pw" /> <br/>
# 이름: <jsp:getProperty name = "user" property = "name" /> <br/>
# 이메일: <jsp:getProperty name = "user" property = "email" /> <br/>

