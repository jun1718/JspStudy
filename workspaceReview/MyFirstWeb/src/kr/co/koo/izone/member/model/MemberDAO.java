package kr.co.koo.izone.member.model;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private DataSource ds;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	private MemberDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private static MemberDAO dao = new MemberDAO();
	
	public static MemberDAO getInstance() {
		if(dao==null) {
			dao = new MemberDAO();
		}
		return dao;
	}
	
	public boolean confirmId(String id) {
		String sql = "SELECT user_id FROM jsp_practice2.izone_member WHERE user_id = ?";
		boolean flag = false;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				flag = true;
			} 
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("하아 모르겠다");
		} finally {
			JdbcUtill.close(conn);
			JdbcUtill.close(pstmt);
			JdbcUtill.close(rs);
		}
		
		System.out.println("\n\n"+sql+"\n\n");
		System.out.println("\n\n"+id+"\n\n");
		System.out.println("\n\n"+flag+"\n\n");
		return flag;
	}
	
	
	public int insertMember(MemberVO member) {
		int rn = 0;
		String sql = "INSERT INTO jsp_practice2.izone_member"
				+ " (user_id, user_pw, user_name, user_email)"
				+ " VALUES(?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPw());
			pstmt.setString(3, member.getUserName());
			pstmt.setString(4, member.getUserEmail());
			
			rn = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return rn;
	}
	
	
	public int userCheck(String id, String pw) {
		String sql = "SELECT user_pw FROM jsp_practice2.izone_member WHERE user_id = ?";
		
		int rn = -1;
		MemberVO member = new MemberVO();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				rn = 0;
				if(rs.getString("user_pw").equals(pw)) {
					rn = 1;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtill.close(conn);
			JdbcUtill.close(pstmt);
			JdbcUtill.close(rs);
		}
		
		
		return rn;
	}
	
	//로그인한 회원의 회원정보를 모두 가져오는 메서드 선언.
	public MemberVO getMemberInfo(String id) {
		String sql = "SELECT * FROM jsp_practice2.izone_member WHERE user_id = ?";
		
		MemberVO member = new MemberVO();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				member.setUserId(rs.getString("user_id"));
				member.setUserPw(rs.getString("user_pw"));
				member.setUserName(rs.getString("user_name"));
				member.setUserEmail(rs.getString("user_email"));				
			}
			
		} catch(Exception e){
			e.printStackTrace();
		}finally {
			JdbcUtill.close(conn);
			JdbcUtill.close(pstmt);
			JdbcUtill.close(rs);
		}
		
		return member;
	}
}
