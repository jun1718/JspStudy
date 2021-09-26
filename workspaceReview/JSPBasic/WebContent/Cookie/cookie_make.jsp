<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
<%
Cookie peanut = new Cookie("peanut_cookie", "땅콩쿠키");
Cookie apple = new Cookie("apple_cookie", "사과쿠키");

peanut.setMaxAge(3);
apple.setMaxAge(60*60);

response.addCookie(peanut);
response.addCookie(apple);

out.print(peanut.getMaxAge()+"<br/>");
out.print(apple.getMaxAge());out.print("<hr />");
%>    

<a href = "cookie_check.jsp">땅콩쿠키 유효시간 확인하려면 클릭!</a>
    