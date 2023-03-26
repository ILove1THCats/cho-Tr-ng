package Servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtils {

	public static void insertUserAccount(Connection conn, UserAccount user) throws SQLException {
		String sql = "insert into useraccount(username, phone, password) values (?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, user.getUsername());
		pstm.setString(2, user.getPhone());
		pstm.setString(3, user.getPassword());

		pstm.executeUpdate();
	}

	public static void insertNVien(Connection conn, nhanVien nv) throws SQLException {
		String sql = "insert into nhanvien(id_nhanvien, name, phone, role, shift) values (?,?,?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, nv.getId_nhanvien());
		pstm.setString(2, nv.getName());
		pstm.setString(3, nv.getPhone());
		pstm.setString(4, nv.getRole());
		pstm.setString(5, nv.getShift());

		pstm.executeUpdate();
	}

	public static void insertBDo(Connection conn, baiDo baid) throws SQLException {

		String sql = "insert into baidoxe(sea_number, parking_plot_name, phone) values (?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, baid.getSea_number());
		pstm.setString(2, baid.getParking_plot_name());
		pstm.setString(3, baid.getPhone());

		pstm.executeUpdate();
	}

	public static UserAccount findUS(Connection conn, String username, String password) throws SQLException {
		String sql = "select username, password from useraccount where username = ? and password = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, username);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			UserAccount us = new UserAccount();
			us.setUsername(username);
			us.setPassword(password);
			return us;
		}
		return null;
	}

	public static nhanVien findNV(Connection conn, String id) throws SQLException {
		String sql = "select id_nhanvien, name, phone, role, shift from nhanvien where id_nhanvien = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			nhanVien nv = new nhanVien();
			nv.setId_nhanvien(rs.getString("id_nhanvien"));
			nv.setName(rs.getString("name"));
			nv.setPhone(rs.getString("phone"));
			nv.setRole(rs.getString("role"));
			nv.setShift(rs.getString("shift"));

			return nv;
		}
		return null;
	}

	public static baiDo findBD(Connection conn, String id) throws SQLException {
		String sql = "select * from baidoxe where id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			baiDo bai = new baiDo();
			bai.setSea_number(rs.getString("sea_number"));
			bai.setParking_plot_name(rs.getString("parking_plot_name"));
			bai.setPhone(rs.getString("phone"));
			return bai;
		}
		return null;
	}

	public static List<nhanVien> Allnhanvien(Connection conn) throws SQLException {
		String sql = "Select id_nhanvien, name, phone, role, shift from nhanvien";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		List<nhanVien> list = new ArrayList();
		while (rs.next()) {
			String id = rs.getString("id_nhanvien");
			String name = rs.getString("name");
			String phone = rs.getString("phone");
			String role = rs.getString("role");
			String shift = rs.getString("shift");

			nhanVien nhanv = new nhanVien();
			nhanv.setId_nhanvien(id);
			nhanv.setName(name);
			nhanv.setPhone(phone);
			nhanv.setRole(role);
			nhanv.setShift(shift);
			list.add(nhanv);
		}
		return list;
	}

	public static List<baiDo> Allbaido(Connection conn) throws SQLException {
		String sql = "Select id, sea_number, parking_plot_name, phone from baidoxe";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		List<baiDo> list = new ArrayList<baiDo>();

		while (rs.next()) {
			String id = rs.getString("id");
			String nameplot = rs.getString("sea_number");
			String address = rs.getString("parking_plot_name");
			String telephone = rs.getString("phone");

			baiDo baid = new baiDo(id, nameplot, address, telephone);
			baid.setId(id);
			baid.setSea_number(nameplot);
			baid.setParking_plot_name(address);
			baid.setPhone(telephone);
			list.add(baid);
		}
		return list;
	}

	public static void EditNhanV(Connection conn, nhanVien nv) throws SQLException {
		String sql = "update nhanvien set name = ?, phone = ?, role = ?, shift = ? where id_nhanvien = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, nv.getName());
		pstm.setString(2, nv.getPhone());
		pstm.setString(3, nv.getRole());
		pstm.setString(4, nv.getShift());
		pstm.setString(5, nv.getId_nhanvien());

		pstm.executeUpdate();
	}

	public static void EditBaiD(Connection conn, baiDo bai) throws SQLException {
		String sql = "update baidoxe set sea_number = ?, parking_plot_name = ?, phone = ? where id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, bai.getSea_number());
		pstm.setString(2, bai.getParking_plot_name());
		pstm.setString(3, bai.getPhone());
		pstm.setString(4, bai.getId());

		pstm.executeUpdate();
	}

	public static void DeleteNhanV(Connection conn, nhanVien nv) throws SQLException {
		String sql = "delete from nhanvien where id_nhanvien = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, nv.getId_nhanvien());

		pstm.executeUpdate();
	}

	public static void DeleteBaiD(Connection conn, baiDo baid) throws SQLException {

		String sql = "delete from baidoxe where Id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, baid.getId());

		pstm.executeUpdate();
	}

	public static List<nhanVien> searchNV(Connection conn, String name) throws SQLException {

		String sql = "select * from nhanvien where name like ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, "%" + name + "%");
		ResultSet rs = pstm.executeQuery();
		List<nhanVien> NV = new ArrayList<>();

		while (rs.next()) {
			String id = rs.getString("id_nhanvien");
			String nAme = rs.getString("name");
			String phone = rs.getString("phone");
			String role = rs.getString("role");
			String shift = rs.getString("shift");

			nhanVien nhanv = new nhanVien();
			nhanv.setId_nhanvien(id);
			nhanv.setName(nAme);
			nhanv.setPhone(phone);
			nhanv.setRole(role);
			nhanv.setShift(shift);
			NV.add(nhanv);

		}

		return NV;
	}
	
	public static List<baiDo> searchBD(Connection conn, String name) throws SQLException {

		String sql = "select * from nhanvien where name like ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, "%" + name + "%");
		ResultSet rs = pstm.executeQuery();
		List<baiDo> BD = new ArrayList<>();

		while (rs.next()) {
			String id = rs.getString(Integer.parseInt("id"));
			String nameplot = rs.getString("sea_number");
			String address = rs.getString("parking_plot_name");
			String telephone = rs.getString("phone");

			baiDo baid = new baiDo(id, nameplot, address, telephone);
			baid.setId(id);
			baid.setSea_number(nameplot);
			baid.setParking_plot_name(address);
			baid.setPhone(telephone);
			BD.add(baid);
		}

		return BD;
	}
	

	public static int countNV(Connection conn) throws SQLException {

		String sql = "select count(*) from nhanvien ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();

		while (rs.next()) {

			return rs.getInt(1);
		}

		return 0;
	}
	
	public static int countBD(Connection conn) throws SQLException {

		String sql = "select count(*) from baidoxe ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();

		while (rs.next()) {

			return rs.getInt(1);
		}

		return 0;
	}

	public static List<nhanVien> WrapPageNV(Connection conn, int PageStart, int PageIndex) throws SQLException {

		String sql = "select * from nhanvien LIMIT ?,?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, PageStart);
		pstm.setInt(2, PageIndex);
		ResultSet rs = pstm.executeQuery();
		List<nhanVien> NV = new ArrayList<>();

		while (rs.next()) {
			String id = rs.getString("id_nhanvien");
			String name = rs.getString("name");
			String phone = rs.getString("phone");
			String role = rs.getString("role");
			String shift = rs.getString("shift");

			nhanVien nhanv = new nhanVien();
			nhanv.setId_nhanvien(id);
			nhanv.setName(name);
			nhanv.setPhone(phone);
			nhanv.setRole(role);
			nhanv.setShift(shift);
			NV.add(nhanv);

		}

		return NV;
	}
	
	public static List<baiDo> WrapPageBD(Connection conn, int PageStart, int PageIndex) throws SQLException {

		String sql = "select * from baidoxe LIMIT ?,?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, PageStart);
		pstm.setInt(2, PageIndex);
		ResultSet rs = pstm.executeQuery();
		List<baiDo> BD = new ArrayList<>(); 

		while (rs.next()) {
			String id = rs.getString("id");
			String nameplot = rs.getString("sea_number");
			String address = rs.getString("parking_plot_name");
			String telephone = rs.getString("phone");

			baiDo baid = new baiDo(id, nameplot, address, telephone);
			baid.setId(id);
			baid.setSea_number(nameplot);
			baid.setParking_plot_name(address);
			baid.setPhone(telephone);
			BD.add(baid);

		}

		return BD;
	}
}
