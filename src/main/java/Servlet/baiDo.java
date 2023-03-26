package Servlet;

public class baiDo {
	
	private String id;
	private String sea_number;
	private String parking_plot_name;
	private String phone;
	
	public baiDo() {
		super();
	}
	
	public baiDo(String id) {
		super();
		this.id = id;
	}
	
	public baiDo(String sea_number, String parking_plot_name, String phone) {
		super();
		this.sea_number = sea_number;
		this.parking_plot_name = parking_plot_name;
		this.phone = phone;
	}
	
	public baiDo(String id, String sea_number, String parking_plot_name, String phone) {
		super();
		this.id = id;
		this.sea_number = sea_number;
		this.parking_plot_name = parking_plot_name;
		this.phone = phone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSea_number() {
		return sea_number;
	}

	public void setSea_number(String sea_number) {
		this.sea_number = sea_number;
	}

	public String getParking_plot_name() {
		return parking_plot_name;
	}

	public void setParking_plot_name(String parking_plot_name) {
		this.parking_plot_name = parking_plot_name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
