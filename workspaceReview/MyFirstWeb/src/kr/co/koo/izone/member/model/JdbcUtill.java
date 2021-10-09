package kr.co.koo.izone.member.model;

import java.sql.*;

public class JdbcUtill {
	
	public static void close(Connection conn) {
		try {
			if(conn!=null) conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pstmt) {
		try {
			if(pstmt!=null) pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs) {
		try {
			if(rs!=null) rs.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
