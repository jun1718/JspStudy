package kr.co.koo.jdbc.basic;

import java.sql.*;
import java.util.Scanner;

public class JdbcDelete {
	
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		String uid = "jsp"; //root
		String upw = "jsp"; //mysql로 해도된다
		String url = "jdbc:mysql://localhost:3306/jsp_practice";
		
		
		String id;
		System.out.println("삭제할 회원의 ID를 입력하세요.");
		System.out.print("> ");
		id = scan.next();
		
		
		
		
		Connection conn = null;
		Statement stmt = null;
		
		String sql = "DELETE FROM jsp_practice.member"
				+ "where id = '"+id+"';";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, uid, upw);
			System.out.println(conn);
			
			stmt = conn.createStatement();
			System.out.println(stmt);
			int resultNum = stmt.executeUpdate(sql);
			
			if(resultNum >= 1) {
				System.out.println("db에 데이터저장성공!");
			} else {
				System.out.println("데이터 저장 실패!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			scan.close();
		}
	}
}
