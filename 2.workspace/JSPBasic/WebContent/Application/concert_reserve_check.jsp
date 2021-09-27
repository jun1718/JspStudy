<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.*"%>
    
<%
	//1.예매가 확정된 좌석정보를 저장할 리스트
	List<String> list = new ArrayList<>();
	
	//6.list가 생성되고 내부의 선점된 좌석들을 넣어줘야하니까 선점된(완료된) 좌석데이터의 값이
	//있다면 list에 그 값들을 넣어주고 없으면 그냥 아무것도안하고 빈 list를 내려보내면 된다.
	if(application.getAttribute("complete_list") != null){
		list = (List<String>)application.getAttribute("complete_list");
	}
	
	//2.사용자가 예매를 희망하는 좌석정보가 들어있는 배열
	String[] seat = request.getParameterValues("seat");
	
	
	//3.예약 선점여부를 확인할 로직
	List<String> temp = new ArrayList<>();//예약확정 전에 임시로 좌석정보를 저장할 리스트
	
	int count =0; //몇자리를 예약할수 있는지의 여부를 체크할 변수
	for(String s : seat){
		if(list.contains(s)){ //보통 예약할때 3자리 예약하면 3명지인앉으려하는데
					//도중에 한자리가 선점되어있으면 그자리빼고 2자리만해주나? 아니잖아
					//3명 같이앉아야하니까 1자리라도 선점되면 싹다 예약취소시켜버리잖아
					//그래서 이거도 하나라도 발견되면 브레이크하는거!
			break;
		} else{
			temp.add(s);
			count++;
		}
	}
	
	
	//4.예약선점여부 결과 선점한 좌석이 없을시 모든 임시리스트 내부객체의 주소들을 확정리스트에 추가하기 	
	if(count == seat.length){
		//addAll()메서드는 리스트내부에 리스트객체들을 전부 추가하는 메서드임
		list.addAll(temp);
	}
	
	
	//5.브라우저가 종료되도 리스트가 유지되어야한다. 그래야 다른 브라우저가 와도 어디어디예약이
	//남는지 아니까 그래서 application에 저장한다. 세션데이터의 이름은 complete_list
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