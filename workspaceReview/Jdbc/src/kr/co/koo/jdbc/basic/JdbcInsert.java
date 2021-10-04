package kr.co.koo.jdbc.basic;

import java.sql.*;
import java.util.Scanner;

public class JdbcInsert {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		String uid = "root";
		String upw = "mysql";
		String url = "jdbc:mysql://localhost:3306/jsp_practice";
		
//		String id = "a1_001";
//		String pw = "a1";
//		String name = "a기계";
//		String email = "a@naver.com";
		
		System.out.print("id입력 : ");
		String id = scan.next();
		
		System.out.print("pw입력 : ");
		String pw = scan.next();
		
		System.out.print("이름입력 : ");
		String name = scan.next();
		
		System.out.print("email입력 : ");
		String email = scan.next();

//		String id = "jsp013";
//		String pw = "jjj123";
//		String name = "김제이에스피";
//		String email = "jjj123@jsp.com";
		
		String sql = "INSERT INTO jsp_practice.member VALUES ('"+id+"', '"+pw+"', '"+name+"', '"+email+"');";
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			
		
			int resultNum = stmt.executeUpdate(sql);
			if(resultNum==1) {
				System.out.println("데이터 저장 성공!");
			} else {
				System.out.println("데이터 저장 실패 ㅠㅠ");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				stmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
	}

}
