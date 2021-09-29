<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	# 디렉티브 태그의 include:
		ex) <%@ include file = "삽입할 페이지" %>
		-페이지 내부에서 공유하면서 써야할 변수나 메서드를 다른 파일에 선언해두고 삽입하여 사용
			-자바코드 응용 필요할때
			
	# 액션태그의 include:
		ex) <jsp:include page = "삽일할 페이지" %>
		-단순히 UI를 복사하고 싶을때 주로 사용
				-광고 등 그냥 갖다 넣기만 하면될때
 --%>

	<h3>안녕하세요. 여기는 1번 페이지입니다.</h3>
	
	<%@ include file = "include_ex02.jsp" %>
	
	<jsp:include page="include_ex02.jsp" />
	
	<h4>다시 여기는 1번 페이지 입니다.</h4>

</body>
</html>