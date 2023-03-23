package Servlet;

public class nhanVien {
	private int Id;
	private String Name;
	private String Email;
	private String Role;
	private String Password;
	
	public nhanVien() {
		super();
	}

	public nhanVien(int id) {
		super();
		Id = id;
	}

	public nhanVien(String name, String password) {
		super();
		Name = name;
		Password = password;
	}
	
	public nhanVien(String name, String email, String role) {
		super();
		Name = name;
		Email = email;
		Role = role;
	}

	public nhanVien(String name, String email, String role, String password) {
		super();
		Name = name;
		Email = email;
		Role = role;
		Password = password;
	}

	public nhanVien(int id, String name, String email, String role, String password) {
		super();
		Id = id;
		Name = name;
		Email = email;
		Role = role;
		Password = password;
	}
	
	public nhanVien(int id, String name, String email, String role) {
		super();
		Id = id;
		Name = name;
		Email = email;
		Role = role;
	}

	public nhanVien(nhanVien nhv) {
		this.Name = Name;
		this.Password = Password;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getRole() {
		return Role;
	}

	public void setRole(String role) {
		Role = role;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}
	
	
}
