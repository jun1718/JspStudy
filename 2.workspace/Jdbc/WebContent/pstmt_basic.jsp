<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>    
<%
	String url = "jdbc:mysql://localhost:3306/jsp_practice";
	String uid = "jsp";
	String upw = "jsp";
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	String sql = "INSERT INTO jsp_practice.member VALUES (?, ?, ?, ?)";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		
		/*
			- pstmt 객체는 Connection이 제공하는 prepareStatement()라는
			메서드를 호출합니다. 매개값에 sql을 전달합니다.
			stmt: 생성시 매개값없음
			pstmt: 생성시 불완전한 매개값전달
		*/
		
		pstmt = conn.prepareStatement(sql);
		
		/*
			-pstmt 객체를 생성했다면 sql문의 ?값들을 채워줌
			-?는 첫번째 물음표부터 1번의 인덱스값을 가지며 순차적으로 인덱스가 1씩 증가함
			-db테이블의 컬럼데이터타입에 따라 setString(), setInt()등의 메서드를 사용하여
			?를 채움
		*/
		
		pstmt.setString(1, "보라돌이");
		pstmt.setString(2, "보라1234");
		pstmt.setString(3, "보라귀");
		pstmt.setString(4, "보ㅓ라나라1234@naver.com");
		
		/*
			-?값을 모두 입력했다면 sql문의 종류에 따라 executeQuery(), executeUpdate
					()를 호룰
			stmt : 실행명령시 매개값으로 쿼리문전달
			pstmt: 실행명령시 매개값 전달 x
			
		*/
		
		int rn = pstmt.executeUpdate();
		
		if(rn==1){
			System.out.print("입력 성공!");
		} else{
			System.out.print("입력 실패!");
		}
		
		
	}catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			conn.close();
			pstmt.close();
		}catch(Exception e){
			e.printStackTrace();
		} 	
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
하이
</body>
</html>