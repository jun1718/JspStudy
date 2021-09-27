<%@ page language="java" contentType="text/html; charset=UTF-8"

   pageEncoding="UTF-8"%>

<%

/*

  1.로그인하지 않은 사용자가 주소창에 이 페이지의 URL을 적고 들어왔을 경우 로그인창으로 돌려보내는

     코드를 작성하세요.

	

  2.로그인한 회원의 아이디와 별명을 통해 "nick(id)님 환영하세요"를 출력하세요

 

  3.a태그로 로그인창으로 돌아가는 링크와 request 폴더에 앨범페이지로

  갈 수 있는 링크 2개를 작성하세요.

 

  4.a태그로 로그아웃페이지에 가서 거기서 로그아웃할수 있도록 하시오. (로그아웃 파일이름 : session_logout.jsp)

	-로그아웃안하면 세션이 계속 유지되고있기때문에 1,2,3 제대로 작성했어도 로그인 페이지로 갔을때

		거기에서 welcome.jsp 주소를 url에 입력하면 들어가짐;; 세션이 당연히 남아있으니 만료되거나

		html꺼질때까지 되겠지 그러니 4번을 꼭 구현해야함

 

  ***5.session_login.jsp 위치에서 작업: 로그인이 된사람은 welcome페이지에서 로그인 창으로 돌아가는것을 클릭했을때

	그냥 로그인창이 나오는것이 아닌 이미 누구누구님은 로그인된 사람입니다. 라는 것을 출력

 

	**쿠키와 세션의 차이: 브라우저 껐다켰을때 로그인이 유지되는가? 세션은 안되고 쿠키는됨 세션 안되는거

	확인해봐라(그럼 1번 작성후 4번안만들어도 처음 로그인할때랑 브라우저껐다켰을때는 welcome주소쳐도

		login으로 와지겠네? session값이 없으니까 이거도 확인해라) ㅇㅇ 됨

*/




	if(session.getAttribute("user_id") == null){
		response.sendRedirect("session_login.jsp");
	} 
		
	String id = (String)session.getAttribute("user_id");
	String nick = (String)session.getAttribute("nick");
%>

​
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%= nick %>(<%= id %>)님! 로그인 축하드립니당 ㅎㅎ <br/>
<a href = "session_login.jsp">로그인창으로 되돌아가기</a><br/>
<a href = "../JspObjRequest/req_album.jsp">앨범 고르러가기</a><br/>
<a href = "session_logout.jsp">로그아웃</a><br/>

<%@ include file = "../Application/app_basic01.jsp" %>


</body>
</html>