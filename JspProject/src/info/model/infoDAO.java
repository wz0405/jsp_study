package info.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;



public class infoDAO { //명령전송기능 
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/root";
	public infoDAO() {
		
		try {
			Class.forName(driver);
			System.out.println("오라클드라이버 성공");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("오라클드라이버 실패");
			
		}
	}
	public Connection getConnection()
	{
		Connection conn=null;
		try {
			conn=DriverManager.getConnection(url,"root","1234");
			System.out.println("Db 연동 성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("DB 연동 실패");
		}
		return conn;
	}
	//insert
	public void infoInsert(infoDTO dto) {
		
		
		String sql="insert into info values(null,?,?,now())";
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		conn=getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			//??에 대한 바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
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
	///////
	public Vector<infoDTO> getAllDatas(){
		Vector<infoDTO> list = new Vector<infoDTO>();
		Connection conn =null;
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		String sql="select * from info order by num asc";
		conn=getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			//여러개의 데이터를 얻는 경우 while
			while(rs.next()) {
				//반드시 while 문 안에서 선
				infoDTO dto=new infoDTO();
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setSdate(rs.getTimestamp("sdate"));
				list.add(dto);
			}
			//벡터에 추가
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		} 
		return list;
	}
	////수정하려는 하나의 데이터 찾기
	public infoDTO getData(String num) {
		infoDTO dto = new infoDTO();
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from info where num=?";
		
		conn=getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs=pstmt.executeQuery();
			
			//찾으려는 데이터가 하나일때는 while 말고 if
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setSdate(rs.getTimestamp("sdate"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return dto;
		
	}
	public void infoUpdate(infoDTO dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="update info set name=?,addr=? where num=?";
		
		conn=getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			pstmt.setString(3, dto.getNum());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
	public void infoDelete(infoDTO dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql = "delete from info where num=?";
		
		conn=getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getNum());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
	}

}
