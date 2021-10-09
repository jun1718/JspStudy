package kr.co.koo.jdbc.user.model;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//DAO클래스는 DB작업을 전담처리함
public class UserDAO {
	//private String url = "jdbc:mysql://localhost:3306/jsp_practice";
	//private String uid = "jsp";
	//private String upw = "jsp";
	
	private DataSource ds;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	//싱글톤패턴 클래스생성
	//1.클래스 외부에서 객체를 생성할수 없도록 생성자에 private제한을 붙임
	
	private UserDAO() {
		try {
		//	Class.forName("com.mysql.jdbc.Driver");
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//2.자신의 클래스 내부에서 스스로의 객체를 1개 생성함
	private static UserDAO dao = new UserDAO();
	
	//3.외부에서 객체 생성을 요구할시 공개된 메서드를 통해 미리 만들어둔 단 하나의 객체를 리턴함
	
	public static UserDAO getInstance() {
		if(dao != null) {
			dao = new UserDAO();
		}
		return dao;
	}
	
	//UserDAO에서는 회원 관리에 필요한 db연동 로직들을 메서드로 나열하여 작성
	
	//DB에 회원가입 데이터를 insert하는 메서드 선언
	public int join(UserVo users){
		String sql = "INSERT INTO users VALUES (?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rn = 0;
		try{
			//conn = DriverManager.getConnection(url, uid, upw);
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,  users.getName());
			pstmt.setString(2,  users.getId());
			pstmt.setString(3,  users.getPw());
			pstmt.setString(4,  users.getPhone1());
			pstmt.setString(5,  users.getPhone2());
			pstmt.setString(6,  users.getPhone3());
			pstmt.setString(7,  users.getGender());

			rn = pstmt.executeUpdate();

		} catch(Exception e) {
			e.printStackTrace();	
		} finally{
			try{
				conn.close();
				pstmt.close();
				
			} catch(Exception e) {
				e.printStackTrace();	
			}
		}

		return rn;
	}
	
	
	//DB로부터 모든 회원정보를 가져오는 메서드 선언
	public List<UserVo> userSelectAll(){
		
		List<UserVo> userList = new ArrayList<>();
		
		String sql = "SELECT * FROM users";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserVo uv = new UserVo();
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println(conn);
	
			while(rs.next()) {
				UserVo users = new UserVo(
						rs.getString("name"),
						rs.getString("id"),
						rs.getString("pw"),
						rs.getString("phone1"),
						rs.getString("phone2"),
						rs.getString("phone3"),
						rs.getString("gender") );
				
				userList.add(users);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return userList;
	}
	
	//회원탈퇴를 처리하는 메서드 선언
	public int userDelete(String id){
		int rn = 0;
		
		String sql = "DELETE FROM users WHERE id = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
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
