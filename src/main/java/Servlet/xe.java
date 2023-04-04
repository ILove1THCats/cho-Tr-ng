package Servlet;

public class xe {
	
	private String id;
	private String loaixe;
	private String bienso;
	private String mausac;
	private String tinhtrang;
	public xe() {
		super();
	}
	public xe(String id) {
		super();
		this.id = id;
	}
	public xe(String id, String loaixe, String bienso, String mausac, String tinhtrang) {
		super();
		this.id = id;
		this.loaixe = loaixe;
		this.bienso = bienso;
		this.mausac = mausac;
		this.tinhtrang = tinhtrang;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLoaixe() {
		return loaixe;
	}
	public void setLoaixe(String loaixe) {
		this.loaixe = loaixe;
	}
	public String getBienso() {
		return bienso;
	}
	public void setBienso(String bienso) {
		this.bienso = bienso;
	}
	public String getMausac() {
		return mausac;
	}
	public void setMausac(String mausac) {
		this.mausac = mausac;
	}
	public String getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	

}
