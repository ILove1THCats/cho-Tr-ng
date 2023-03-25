package Servlet;

public class nhanVien {
	private String Id_nhanvien;
	private String Name;
	private String Phone;
	private String Role;
	private String Shift;

	public nhanVien() {
	}

	public nhanVien(String id) {
		Id_nhanvien = id;
	}

	public nhanVien(String id, String name, String phone, String role, String shift) {
		Id_nhanvien = id;
		Name = name;
		Phone = phone;
		Role = role;
		Shift = shift;
	}

	public nhanVien(String name, String phone, String role, String shift) {
		Name = name;
		Phone = phone;
		Role = role;
		Shift = shift;
	}

	public String getId_nhanvien() {
		return Id_nhanvien;
	}

	public void setId_nhanvien(String id_nhanvien) {
		Id_nhanvien = id_nhanvien;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getRole() {
		return Role;
	}

	public void setRole(String role) {
		Role = role;
	}

	public String getShift() {
		return Shift;
	}

	public void setShift(String shift) {
		Shift = shift;
	}
}
