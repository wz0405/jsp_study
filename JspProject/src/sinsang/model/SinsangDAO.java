package sinsang.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;


public class SinsangDAO {

	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/root";

	public SinsangDAO() {
		try {
			Class.forName(driver);
			System.out.println("오라클드라이버 성공");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("오라클드라이버 실패");
		}
	}

	///////////////////////////// 커넥션
	public Connection getConnection() {
		Connection conn = null;

		try {
			conn = DriverManager.getConnection(url, "root", "1234");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("커넥션실패");
		}

		return conn;
	}

	public void sinsangInsert(SinsangDTO dto) {

		String sql = "insert into sinsang values(null,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			// ??에 대한 바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getBlood());
			pstmt.setString(3, dto.getHp());
			pstmt.setString(4, dto.getBirth());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("insert fail");
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public Vector<SinsangDTO> getAllData(){
		Vector<SinsangDTO>list = new Vector<SinsangDTO>();
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs =null;
		
		String sql="select * from sinsang order by num asc";
		conn=getConnection();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				SinsangDTO dto = new SinsangDTO();
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setBlood(rs.getString("blood"));
				dto.setHp(rs.getString("hp"));
				dto.setBirth(rs.getString("birth"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return list;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		SinsangDAO dao = new SinsangDAO();
		dao.getConnection();
	}

}
