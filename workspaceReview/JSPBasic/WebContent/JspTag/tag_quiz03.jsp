<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" import = "java.util.ArrayList" %>
<%!
List<String> party = new ArrayList<>();
%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>당신의 역할</h1>

<%
String[] jobs = {"도적", "사냥꾼", "전사", "사제", "마법사"};
int r = (int)(Math.random()*jobs.length);
if(party.size() == 10) party.clear();
party.add(jobs[r]);

int count = 0;
for(int i=0;i<party.size();i++){
	if(party.get(i)==jobs[r]) count++;
}


%>

당신에게 부여된 역할은 <strong><%= party.get(party.size()-1) %></strong>입니다.<br />
현재 파티에 당신과 같은 역할을 가진 플레이어는 <%= count %>명입니다.
<hr />

현재 파티 구성<br />
<%= party %>(<%= party.size() %>명 참가중)

</body>
</html>