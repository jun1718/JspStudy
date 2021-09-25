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

<% if(group.equals("티아라")){ %>
	<div align = "center">
		<h2>선택하신 앨범정보</h2>
		<p>
			당신이 선택한 앨범은 티아라의 무한한앨범 뽀삐뽀삐입니다~!
		</p>
		<hr/>
		<h3>타이틀곡 팔로우미~팔로우미~</h3>
	</div>	
<%} else{%>
	<div align = "center">
		<p>
			당신이 선택한 앨범은 소녀시대의 소녀시대입니다~!
		</p>
		<h3>타이틀곡 어리다고놀리지말아요.</h3>
		<iframe width="640" height="360" src="https://www.youtube.com/embed/AdjhDjKbcUg?rel=0;apm;autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
<%} %>


</body>
</html>