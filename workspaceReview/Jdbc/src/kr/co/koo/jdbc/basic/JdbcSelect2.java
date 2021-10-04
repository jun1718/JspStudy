package kr.co.koo.jdbc.basic;

import java.util.Scanner;

import javax.servlet.jsp.tagext.TryCatchFinally;

import java.sql.*;

public class JdbcSelect2 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		
		String url = "jdbc:mysql://localhost:3306/jsp_practice";
		String uid = "jsp";
		String upw = "jsp";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		
//		String sql = "SELECT * FROM jsp_practice.member WHERE id = '"+ id + "'";
		String sql = "SELECT * FROM jsp_practice.member";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			
			while(true) {
				rs = stmt.executeQuery(sql);
				System.out.println("조회할 회원의 ID를 입력하세요.");
				System.out.print("> ");
				String id = scan.next();
				
				System.out.println("==================회원정보===================");
				while(rs.next()) {
					
					if(rs.getString("id").equals(id)) {
						System.out.println("아이디 : " + rs.getString("id"));
						System.out.println("비번 : " + rs.getString("pw"));
						System.out.println("이름 : " + rs.getString("name"));
						System.out.println("email : " + rs.getString("email"));
						break;
					}									
				}
				System.out.println("==========================================");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				stmt.close();
				rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			} 
			scan.close();
		}
	}
}
