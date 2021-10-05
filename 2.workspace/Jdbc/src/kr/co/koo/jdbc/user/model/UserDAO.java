package kr.co.koo.jdbc.user.model;

import java.sql.*;
import java.util.*;

//DAO클래스는 DB작업을 전담처리함
public class UserDAO {
	private String url = "jdbc:mysql://localhost:3306/jsp_practice";
	private String uid = "jsp";
	private String upw = "jsp";
	
	private String sql = "";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	//싱글톤패턴 클래스생성
	//1.클래스 외부에서 객체를 생성할수 없도록 생성자에 private제한을 붙임
	
	private UserDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
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
	
	
}
