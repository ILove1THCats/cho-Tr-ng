package Servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtils {
	
	public static void insertNVien(Connection conn, nhanVien nv) throws SQLException {
		
		String sql = "insert into nhanvien(Name, Email, Role, Password) values (?,?,?,?)";
		
		PreparedStatement pstm = conn.prepareStatement(sql);
		
		pstm.setString(1, nv.getName());
		pstm.setString(2, nv.getEmail());
		pstm.setString(3, nv.getRole());
		pstm.setString(4, nv.getPassword());
		
		pstm.executeUpdate();	
	}
	
	public static nhanVien findNV(Connection conn, String nameNV, String passWord) throws SQLException {
		
		String sql = "select Name, Password from nhanvien where Name = ? and Password = ?";
		
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, nameNV);
		pstm.setString(2, passWord);
		ResultSet rs = pstm.executeQuery();
		
		if(rs.next()) {
			nhanVien nhanv = new nhanVien();
			nhanv.setName(nameNV);
			nhanv.setPassword(passWord);
			return nhanv;
		}
		return null;
	}
	public static List<nhanVien> Allnhanvien(Connection conn) throws SQLException {
		String sql = "Select Name, Email, Role from nhanvien";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		List<nhanVien> list = new ArrayList<nhanVien>();
		
		while(rs.next()) {
			int id = rs.getInt("Id");
			String name = rs.getString("Name");
			String email = rs.getString("Email");
			String role = rs.getString("Role");
			
			nhanVien nhanv = new nhanVien();
			nhanv.setId(id);
			nhanv.setName(name);
			nhanv.setEmail(email);
			nhanv.setRole(role);
			list.add(nhanv);
		}
		return list;
	}	
}
