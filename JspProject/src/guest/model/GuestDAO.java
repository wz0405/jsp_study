package guest.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import member.model.DbMain;
import member.model.MemberDTO;

public class GuestDAO {
    DbMain db = new DbMain();

    //insert

    public void insertGuest(GuestDTO dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "insert into guest values(null,?,?,?,?,now())";

        conn = db.getConnection();
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getId());
            pstmt.setString(3, dto.getContent());
            pstmt.setString(4, dto.getAvata());

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

    public Vector<GuestDTO> guestGetAlldata() {
        Vector<GuestDTO> list = new Vector<GuestDTO>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from guest order by num desc";
        conn = db.getConnection();
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                GuestDTO dto = new GuestDTO();
                dto.setNum(rs.getString("num"));
                dto.setName(rs.getString("name"));
                dto.setId(rs.getString("id"));
                dto.setContent(rs.getString("content"));
                dto.setAvata(rs.getString("avata"));
                dto.setWriteday(rs.getTimestamp("writeday"));

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
}
