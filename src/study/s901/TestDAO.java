package study.s901;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TestDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public TestDAO() {  con = DBConnect.getConnect(); }

    public ArrayList<TestDTO> list() {
        ArrayList<TestDTO> list = new ArrayList<>();

        String sql = "SELECT * FROM test_board ORDER BY idgroup DESC, step ASC";

        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                TestDTO dto = new TestDTO();
                dto.setId(rs.getInt("id"));
                dto.setName(rs.getString("name"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setSavedate(rs.getTimestamp("savedate"));
                dto.setHit(rs.getInt("hit"));
                dto.setIdgroup(rs.getInt("idgroup"));
                dto.setStep(rs.getInt("step"));
                dto.setIndent(rs.getInt("indent"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public int writeSave(TestDTO dto) {
        int bool = 0;

        String sql = "INSERT INTO test_board(id, name, title, content, idgroup, step, indent) VALUES(test_board_seq.NEXTVAL, ?, ?, ?, test_board_seq.CURRVAL, 0, 0)";

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, dto.getName());
            ps.setString(2, dto.getTitle());
            ps.setString(3, dto.getContent());
            bool = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return bool;
    }

    private void upHit(int id) {
        String sql = "UPDATE test_board SET hit=hit+1 WHERE id=" + id;

        try {
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public TestDTO contentView(int id) {
        upHit( id );

        TestDTO dto = null;
        String sql = "SELECT * FROM test_board WHERE id=?";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                dto = new TestDTO();
                dto.setId(rs.getInt("id"));
                dto.setName(rs.getString("name"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setSavedate(rs.getTimestamp("savedate"));
                dto.setHit(rs.getInt("hit"));
                dto.setIdgroup(rs.getInt("idgroup"));
                dto.setStep(rs.getInt("step"));
                dto.setIndent(rs.getInt("indent"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return dto;
    }

    public void modify(TestDTO dto) {
        String sql = "UPDATE test_board SET name=?, title=?, content=? WHERE id=?";

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, dto.getName());
            ps.setString(2, dto.getTitle());
            ps.setString(3, dto.getContent());
            ps.setInt(4, dto.getId());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(int id) {
        String sql = "DELETE FROM test_board WHERE id=" + id;
        try {
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void replyShape(TestDTO d) {
        String sql = "UPDATE test_board SET step=step+1 WHERE idgroup=? AND step>?";
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, d.getIdgroup());
            ps.setInt(2, d.getStep());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void reply(TestDTO dto) {
        TestDTO d = contentView(dto.getId());

        replyShape(d);

        String sql = "INSERT INTO test_board(id, name, title, content, idgroup, step, indent) VALUES(test_board_seq.NEXTVAL, ?, ?, ?, ?, ?, ?)";

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, dto.getName());
            ps.setString(2, dto.getTitle());
            ps.setString(3, dto.getContent());

            ps.setInt(4, d.getIdgroup());
            ps.setInt(5, d.getStep() + 1);
            ps.setInt(6, d.getIndent() + 1);

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
