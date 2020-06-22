package member.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbMain {

	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/root";
	
	public DbMain() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 실패");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection() {
		Connection conn=null;
		try {
			conn=DriverManager.getConnection(url, "root", "1234");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DB연동실패");
		}
		return conn;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DbMain db = new DbMain();
		db.getConnection();
	}

}
