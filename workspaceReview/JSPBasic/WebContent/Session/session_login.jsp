
<%@ page language="java" contentType="text/html; charset=UTF-8"

  pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

​

<style type = "text/css">

fieldset{

  width: 50%;

  align-content: center;

}

</style>

​

</head>

<body>

​
<% if(session.getAttribute("user_id")==null){ %>
  <form action="session_login_ok.jsp" method="post">

     <fieldset>

        <legend>로그인 폼</legend>


        <input type="text" name="id" size="10px" placeholder="id"> <br />

        <!--  span은 div같은건데 자동으로 줄개행이 안일어나는 상자임 -->

        <input type="password" name="pw" size="10px"placeholder="pw"> <br />

        <input type="text" name="nick" size="10px" placeholder="별명"> <br />

        <input type="submit" value="로그인" />

     </fieldset>

  </form>
<% } else{%>
	이미 로그인했어~~ 세션만로안됐으니까 로그인 귀찮게 입력안해도 된다귱~!<br/>
	<a href = "session_login_welcome.jsp">웰컴창으로 돌아가기</a>
<% } %>

​

</body>

</html>

​