<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*"%>
    
<%
	String[] seat = request.getParameterValues("seat");
	
	List<String> list = new ArrayList<>();
	
	if(application.getAttribute("complete_list")!=null){
		list = (List<String>)application.getAttribute("complete_list");
	}
	
	List<String> temp = new ArrayList<>();
	int count = 0;
	
	for(String s : seat ){
		if(list.contains(s)){
			break;
		}else{
			temp.add(s);
			count++;
		}
	}
	
	if(count==seat.length){
		list.addAll(temp);
	}
	
	application.setAttribute("complete_list", list);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div align="center">
		<h2>콘서트 예매 처리 결과</h2>
		<p>
			선택한 좌석<br>
			<%
				for(String s : seat) {
					out.println("<b>[" + s + "]</b>");
				}
			%>
			<br>가 예매 신청되었습니다.
		</p>
		<p>
			예매 신청 결과: <%= (count == seat.length) ? "성공" : "실패" %>
			<br>
			<% if(count != seat.length) { %>
				예매하고자 하는 좌석이 이미 선점되었습니다.
			<% } %>
			<br>
			<a href="concert_reserve.jsp">추가 예매하기</a>
		</p>
		
	</div>
	
</body>
</html>