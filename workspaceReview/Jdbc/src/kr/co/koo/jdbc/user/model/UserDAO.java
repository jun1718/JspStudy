package kr.co.koo.jdbc.user.model;

import java.sql.*;

public class UserDAO {
	private String url = "jdbc:mysql://localhost:3306/jsp_practice";
	private String uid = "jsp";
	private String upw = "jsp";
	
	
	
	private Connection conn;
	private PreparedStatement pstmt;
	
	private UserDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	private static UserDAO dao = new UserDAO();
	
	public static UserDAO getInstance() {
		if(dao==null) {
			dao = new UserDAO();
		}
		return dao;
	}
	
	public int join(UserVO user) {
		
		String sql = "INSERT INTO users VALUES (?, ?, ?, ?, ?, ?, ?)";
		int rn = 0;
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getId());
			pstmt.setString(3, user.getPw());
			pstmt.setString(4, user.getPhone1());
			pstmt.setString(5, user.getPhone2());
			pstmt.setString(6, user.getPhone3());
			pstmt.setString(7, user.getGender());
			
			rn = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		return rn;
	}
	

}
