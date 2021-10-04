package kr.co.koo.jdbc.basic;

import java.sql.*;
import java.util.Scanner;

public class JdbcInsert {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("# 회원정보 입력을 시작합니다.");
		System.out.print("* 아이디: ");
		String id = sc.next();
		
		System.out.print("* 비밀번호: ");
		String pw = sc.next();
		
		System.out.print("* 이름: ");
		String name = sc.next();
		
		System.out.print("* 이메일: ");
		String email = sc.next();
		
		//DB연동 순서
		//1. DB사용자 계정명과 암호, DB URL 등 초기 데이터  변수를 설정
		String uid = "jsp";
		String upw = "jsp";
		String url = "jdbc:mysql://localhost:3306/jsp_practice";
		Connection conn = null;
		Statement stmt = null;
		
		try {
			//2.JDBC 커넥터 드라이버 호출
			Class.forName("com.mysql.jdbc.Driver");
			
			//3.DB연동을 위한 클래스들의 객체를 생성
			/*
			 * # a - Connection 객체
			 * :DB와의 연결을 위한 객체, Connection객체를 생성하려면 직접 new 연산자를
			 * 통해 객체를 생성할수 없고(Connection은 interface이기때문임)
			 * DriverManager 클래스가 제공하는 정적 메서드 getConnection()을
			 * 호출하여 객체를 생성합니다. 
			 */
			conn = DriverManager.getConnection(url, uid, upw);
			
			System.out.println(conn); //주소값이 잘나오면되는거고 null이면 
							//연동을 위한 객체가 연동을 못한것
			
			

			/*
			 * # b - Statement 객체:
			 * SQL문 실행을 위한 객체.
			 * Statement 객체는 Connection 객체가 제공하는 createStatement() 메
			 * 서드를 호출하여 생성
			 */
			
			stmt = conn.createStatement();
			/*
			 * c - SQL문 작성
			 * SQL문은 String 형태로 작성
			 */
			
			//String sql = "INSERT INTO member VALUES ('jsp012', 'jjj123', '김제이에스피', 'jjj123@jsp.com')";
			String sql = "INSERT INTO member VALUES "
					+ "('"+id+"', '"+pw+"', '"+name+"', '"+email+"');";
			/*
			 * # d = Statement 객체를 통한 SQL문 실행
			 * 1.insert, update, delete 명령일 경우 executeUpdate()를 호출
			 * 2.select 명령일 경우 excuteQuery()를 호출
			 * 3.excuteUpdate는 실행 성공시 성공한 쿼리의 개수를, 실패시 0 을 리턴 
			 */
			
			int resultNum = stmt.executeUpdate(sql);
			
			if(resultNum==1) {
				System.out.println("DB에 회원정보 저장 성공!");
			}else {
				System.out.println("DB에 회원정보 저장 실패!");
			}
			
		} catch (Exception e) {
			//catch (ClassNotFoundException e) {
			//상위클래스인 exception으로 받아주자 그냥
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			/*
			 * 4. DB연동 객체들 자원 반납
			 * -원활한  JDBC프로그래밍을 위해 사용한 자원들을 반납함
			 */
			try {
				conn.close();
				stmt.close();
				sc.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}	//이렇게하면 try안에서 conn과 stmt를 선언했으면 
						//여기서 에러남. 왜냐면 try에서 만들고 try에서 사라지니까그래서
				///선언을 밖으로 뺌
		}
		
		
	}
}
