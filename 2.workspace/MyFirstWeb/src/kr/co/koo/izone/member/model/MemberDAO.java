package kr.co.koo.izone.member.model;

import java.sql.*;
import java.util.*;
import javax.sql.DataSource;

import kr.co.koo.izone.util.JdbcUtil;

import javax.naming.*;

public class MemberDAO {
	private static MemberDAO dao = new MemberDAO();
	private DataSource ds;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
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
	
	public int insertMember(MemberVO members) {
		String sql = "INSERT INTO jsp_practice.izone_member"
				+ "VALUES('"+members.getUserId()+"', '"
						+members.getUserPw()+"', '"
						+members.getUserName()+ ")', '"
						+members.getUserEmail()+ "')";
		
		int rn = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
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
