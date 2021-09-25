<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String group = request.getParameter("group");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>선택하신 앨범정보</h2>

<% if(group.equals("티아라")) {%>
당신이 선택한 앨범은 티아라거입니다.
<hr/>

<h3>타이틀곡 뽀삐뽀삐</h3> 
<iframe width="640" height="360" src="https://www.youtube.com/embed/AdjhDjKbcUg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<%} else{%>
당신이 선택한 앨범은 소녀시대거입니다.
<hr/>

<h3>타이틀곡 뽀삐뽀삐</h3>
<iframe width="640" height="360" src="https://www.youtube.com/embed/AdjhDjKbcUg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<%} %>
</body>
</html>