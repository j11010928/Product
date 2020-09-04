package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class JdbcUtil {
	public static Connection getConnection() {
		Connection con=null;
		
		try {
			Context initCtx=new InitialContext();
			DataSource ds=(DataSource)initCtx.lookup("java:comp/env/jdbc/MySQL");
			con=ds.getConnection();
			
			//자동 commit 해제
			con.setAutoCommit(false);
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	//--------------------연결을 닫기위한 close() 오버라이딩-------------------
	public static void close(Connection con) {
		if(con!=null)try{con.close();}catch(Exception e){};
	}
	public static void close(PreparedStatement pstmt) {
		if(pstmt!=null)try{pstmt.close();}catch(Exception e){};
	}
	public static void close(ResultSet rs) {
		if(rs!=null)try{rs.close();}catch(Exception e){};
	}
	
	//--------------------DB작업을 위한 메서드----------------------------
	public static void commit(Connection con) {
		try {
			con.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void rollback(Connection con) {
		try {
			con.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
