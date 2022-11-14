package com.fpt.edu.dao;

import com.fpt.edu.model.Book;
import com.fpt.edu.model.NhaXuatBan;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDao {
    public boolean add(Book book){
        Connection con = DBConnection.getConnection();
        String sql = "insert into tbl_books(ten,tacgia,theloai_id, nxb_id,giaban) values(?,?,?,?,?)";
        PreparedStatement ps = null;
        int output = -1;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1,book.getTen());
            ps.setString(2,book.getTacgia());
            ps.setInt(3,book.getTheloai_id());
            ps.setInt(4,book.getNxb_id());
            ps.setFloat(5,book.getGiaban());
            output = ps.executeUpdate();
            if(ps!=null){
                ps.close();
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return output > 0;
    }

    public List<Book> getAll() {
        List<Book> list = new ArrayList<>();
        Connection con = DBConnection.getConnection();
        PreparedStatement ps = null;
        try {
            String sql = "select b.id, b.ten, b.tacgia, b.theloai_id, b.nxb_id, b.giaban," +
                    " n.ten, n.diachi from tbl_books b join tbl_nxb n on b.nxb_id = n.id";
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Book b = new Book();
                b.setId(rs.getInt(1));
                b.setTen(rs.getString(2));
                b.setTacgia(rs.getString(3));
                b.setTheloai_id(rs.getInt(4));
                b.setNxb_id(rs.getInt(5));
                b.setGiaban(rs.getFloat(6));
                NhaXuatBan n = new NhaXuatBan();
                n.setId(rs.getInt(5));
                n.setTen(rs.getString(7));
                n.setDiachi(rs.getString(8));
                b.setNhaXuatBan(n);
                list.add(b);
            }
            if(rs != null) rs.close();
            if(ps != null) ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
