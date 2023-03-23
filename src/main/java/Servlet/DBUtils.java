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
	
	public static void insertBDo(Connection conn, baiDo baid) throws SQLException {

		String sql = "insert into baidoxe(NamePlot, Address, Telephone, Capacity) values (?,?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, baid.getNamePlot());
		pstm.setString(2, baid.getAddRess());
		pstm.setString(3, baid.getTeLephone());
		pstm.setString(4, baid.getCaPacity());

		pstm.executeUpdate();
	}

	public static nhanVien findNV(Connection conn, String nameNV, String passWord) throws SQLException {

		String sql = "select Name, Password from nhanvien where Name = ? and Password = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, nameNV);
		pstm.setString(2, passWord);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			nhanVien nhanv = new nhanVien();
			nhanv.setName(nameNV);
			nhanv.setPassword(passWord);
			return nhanv;
		}
		return null;
	}

	public static List<nhanVien> Allnhanvien(Connection conn) throws SQLException {
		String sql = "Select Id, Name, Email, Role from nhanvien";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		List<nhanVien> list = new ArrayList<nhanVien>();

		while (rs.next()) {
			Integer id = rs.getInt("Id");
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

	public static List<baiDo> Allbaido(Connection conn) throws SQLException {
		String sql = "Select * from baidoxe";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		List<baiDo> list = new ArrayList<baiDo>();

		while (rs.next()) {
			Integer id = rs.getInt("Id");
			String nameplot = rs.getString("NamePlot");
			String address = rs.getString("Address");
			String telephone = rs.getString("Telephone");
			String capacity = rs.getString("Capacity");

			baiDo baid = new baiDo(id, nameplot, address, telephone, capacity);
			baid.setId(id);
			baid.setNamePlot(nameplot);
			baid.setAddRess(address);
			baid.setTeLephone(telephone);
			baid.setCaPacity(capacity);
			list.add(baid);
		}
		return list;
	}

	public static void EditNhanV(Connection conn, nhanVien nv) throws SQLException {
		String sql = "update nhanvien set Name = ?, Email = ?, Role = ? where Id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, nv.getName());
		pstm.setString(2, nv.getEmail());
		pstm.setString(3, nv.getRole());
		pstm.setInt(4, nv.getId());

		pstm.executeUpdate();
	}

	public static void EditBaiD(Connection conn, baiDo bai) throws SQLException {
		String sql = "update baidoxe set NamePlot = ?, Address = ?, Telephone = ?, Capacity = ? where Id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, bai.getNamePlot());
		pstm.setString(2, bai.getAddRess());
		pstm.setString(3, bai.getTeLephone());
		pstm.setString(4, bai.getCaPacity());
		pstm.setInt(5, bai.getId());

		pstm.executeUpdate();
	}

	public static void DeleteNhanV(Connection conn, nhanVien nv) throws SQLException {

		String sql = "delete from nhanvien where Id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, nv.getId());

		pstm.executeUpdate();
	}

	public static void DeleteBaiD(Connection conn, baiDo baid) throws SQLException {

		String sql = "delete from baidoxe where Id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, baid.getId());

		pstm.executeUpdate();
	}
}
