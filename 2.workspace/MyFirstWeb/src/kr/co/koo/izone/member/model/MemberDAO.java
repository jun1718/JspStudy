package kr.co.koo.izone.member.model;

import java.sql.*;
import java.util.*;
import javax.sql.DataSource;

import kr.co.koo.izone.util.JdbcUtil;

import javax.naming.*;

public class MemberDAO {
	private static MemberDAO dao = new MemberDAO();
	private DataSource ds;
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public static final int LOGIN_FAIL_ID = 0;
	public static final int LOGIN_FAIL_PW = -1;
	public static final int LOGIN_SUCCESS = 1;
	
	
	public MemberDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static MemberDAO getInstance() {
		if(dao==null) {
			dao = new MemberDAO();
		}
		return dao;
	}
	
	//ID 중복확인을 하는 메서드 선언
	public boolean confirmId(String id) {
		String sql = "SELECT user_id FROM izone_member "
				+"WHERE user_id = ?";
		boolean flag = false;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				flag = true;	//아이디가 중복됨을 의미
			} else {
				flag = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			//JdbcUtil.close(rs);
		}
		
		return flag;
	}
	
	public int insertMember(MemberVO member) {
		String sql = "INSERT INTO jsp_practice.izone_member"
				+ " (user_id, user_pw, user_name, user_email)"
				+ " VALUES(?, ?, ?, ?)";
		
		int rn = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPw());
			pstmt.setString(3, member.getUserName());
			pstmt.setString(4, member.getUserEmail());
			
			
			rn = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		
		return rn;
	}
	
	
	public int userCheck(String id, String pw) {
		String sql = "SELECT user_pw FROM jsp_practice.izone_member WHERE user_id = ?";
		int rn = LOGIN_FAIL_ID;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(pw.equals(rs.getString("user_pw"))) {
					rn = LOGIN_SUCCESS;
				}else {					
					rn = LOGIN_FAIL_PW;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {			
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return rn;
	}
	
	public MemberVO getMemberInfo(String id) {
		String sql = "SELECT * FROM jsp_practice.izone_member WHERE user_id = ?";
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
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {			
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		return member;
	}
	
	
	public int changePassword(String id, String pw) {
		String sql = "UPDATE jsp_practice.izone_member set user_pw = ? WHERE user_id = ?";
		
		int rn = 0;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, id);
			
			rn = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {			
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		
		return rn;
	}
	
	
	public int updateMember(MemberVO member) {
		String sql = "UPDATE izone_member SET user_name = ?, user_email = ? WHERE"
				+ " user_id = ?";
		int rn = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getUserName());
			pstmt.setString(2, member.getUserEmail());
			pstmt.setString(3, member.getUserId());
			
			rn = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		
		return rn;
	}
}
