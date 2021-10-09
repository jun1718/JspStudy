package kr.co.koo.jdbc.user.model;

import java.sql.*;
import java.util.*;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;

public class UserDAO {
//	private String url = "jdbc:mysql://localhost:3306/jsp_practice2";
//	private String uid = "jsp1";
//	private String upw = "jsp1";
	
	
	private DataSource ds;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private UserDAO() {
		try {
			Context ct = new InitialContext();	
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
//			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
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
			conn = ds.getConnection();
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
	
	public List<UserVO> userSelectAll(){
		
		List<UserVO> userList = new ArrayList<>();
		
		String sql = "SELECT* FROM users";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				UserVO user = new UserVO(
						rs.getString("name"),
						rs.getString("id"),
						rs.getString("pw"),
						rs.getString("phone1"),
						rs.getString("phone2"),
						rs.getString("phone3"),
						rs.getString("gender") 
				);				
				userList.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn!=null) conn.close();
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return userList;
	}
	
	public int userDelete(String id) {
		String sql = "DELETE FROM users WHERE id = ?";
		int rn = 0;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rn = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return rn;
	}
	
}
