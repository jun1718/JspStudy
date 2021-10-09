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
}
