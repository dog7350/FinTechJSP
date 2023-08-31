package study.s830.DAO;

import java.sql.*;
import java.util.*;

import study.s829.dao.DBConnect;
import study.s830.DTO.MemberDTO;

public class MemberDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public MemberDAO() {
        con = DBConnect.getConnect();
    }

    public ArrayList<MemberDTO> getList() {
        ArrayList<MemberDTO> list = new ArrayList<>();

        String sql = "SELECT * FROM members02";

        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                MemberDTO dto = new MemberDTO();
                dto.setId( rs.getString("id") );
                dto.setPw( rs.getString("pwd") );
                dto.setName( rs.getString("name") );
                dto.setAddr( rs.getString("addr") );

                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public int delete(String id) {
        String sql = "DELETE FROM members02 WHERE id=?";

        int result = 0;

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            result = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public MemberDTO loginChk(String id) {
        String sql = "SELECT * FROM members02 WHERE id=?";

        MemberDTO dto = new MemberDTO();
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                dto.setId(rs.getString("id"));
                dto.setPw(rs.getString("pwd"));
                dto.setName(rs.getString("name"));
                dto.setAddr(rs.getString("addr"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return dto;
    }

    public void insert(MemberDTO dto) {
        String sql = "INSERT INTO members02 VALUES(?, ?, ?, ?)";

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, dto.getId());
            ps.setString(2, dto.getPw());
            ps.setString(3, dto.getName());
            ps.setString(4, dto.getAddr());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(MemberDTO dto) {
        String sql = "UPDATE members02 SET pw=?, name=?, addr=? WHERE id=?";

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, dto.getPw());
            ps.setString(2, dto.getName());
            ps.setString(3, dto.getAddr());
            ps.setString(4, dto.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
