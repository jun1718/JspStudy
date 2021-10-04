package kr.co.koo.jdbc.basic;

import java.sql.*;

public class JdbcSelect {

	public static void main(String[] args) {
		
		String url = "jdbc:mysql://localhost:3306/jsp_practice";
		String uid = "jsp";
		String upw = "jsp";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM jsp_practice.member";
		
		try {
		
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
//			rs.next(); rs.next();
			
			while(rs.next()) {
				System.out.print("아이디 : "+ rs.getString("id"));				
				System.out.print(", pw : "+ rs.getString("pw"));				
				System.out.print(", name : "+ rs.getString("name"));				
				System.out.println(", email : "+ rs.getString("email"));				
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
		}
	}

}
