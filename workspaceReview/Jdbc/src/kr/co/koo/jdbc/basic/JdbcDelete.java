package kr.co.koo.jdbc.basic;

import java.util.Scanner;
import java.sql.*;

public class JdbcDelete {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		String url = "jdbc:mysql://localhost:3306/jsp_practice";
		String uid = "jsp";
		String upw = "jsp";
		
		System.out.print("삭제할 회원의 ID : ");
		String id = scan.next();

		Connection conn = null;
		Statement stmt = null;
		
		String sql = "DELETE FROM jsp_practice.member WHERE id = '" + id + "'";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			
			int resultNum = stmt.executeUpdate(sql);
			
			if(resultNum==1) {
				System.out.println(id + "님의 데이터 삭제 성공!");
			} else {
				System.out.println(id + "님의 데이터 삭제  실패!");				
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
			scan.close();
		}
	}

}
