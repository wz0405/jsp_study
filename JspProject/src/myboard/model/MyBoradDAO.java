package myboard.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import info.model.infoDTO;

public class MyBoradDAO {

    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/root";

    public MyBoradDAO() {
        try {
            Class.forName(driver);
            System.out.println("드라이버 연결성공");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            System.out.println("드라이버 연결실");
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, "root", "1234");
            System.out.println("db연동 성공");
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("db연동 실패");
            e.printStackTrace();
        }
        return conn;
    }

    public void myBoardInsert(MyBoradDTO dto) {

        String sql = "insert into myboard values(null,?,?,?,now())";
        Connection conn = null;
        PreparedStatement pstmt = null;

        conn = getConnection();
        try {
            pstmt = conn.prepareStatement(sql);
            // ??에 대한 바인딩
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getSubject());
            pstmt.setString(3, dto.getContent());
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

    public Vector<MyBoradDTO> getAllDatas() {
        Vector<MyBoradDTO> list = new Vector<MyBoradDTO>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from myboard order by num asc";
        conn = getConnection();
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                MyBoradDTO dto = new MyBoradDTO();
                dto.setNum(rs.getString("num"));
                dto.setName(rs.getString("name"));
                dto.setSubject(rs.getString("subject"));
                dto.setContent(rs.getString("content"));
                dto.setSdate(rs.getTimestamp("sdate"));
                list.add(dto);
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
        return list;
    }

    public MyBoradDTO getData(String num) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MyBoradDTO dto = new MyBoradDTO();

        String sql = "select * from myboard where num=?";
        conn = getConnection();
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {

                dto.setNum(rs.getString("num"));
                dto.setName(rs.getString("name"));
                dto.setSubject(rs.getString("subject"));
                dto.setContent(rs.getString("content"));
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

    public void myBoardUpdate(MyBoradDTO dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "update myboard set name=?,subject=?,content=? where num=?";

        conn = getConnection();
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getSubject());
            pstmt.setString(3, dto.getContent());
            pstmt.setString(4, dto.getNum());

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

    public void myBoardDelete(MyBoradDTO dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        conn = getConnection();
        String sql = "delete from myboard where num=?";
        try {
            pstmt = conn.prepareStatement(sql);

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
        MyBoradDAO dao = new MyBoradDAO();
        dao.getConnection();
    }
}
