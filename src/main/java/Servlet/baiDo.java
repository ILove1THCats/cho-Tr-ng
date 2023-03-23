package Servlet;

public class baiDo {
	
	private int id;
	private String namePlot;
	private String addRess;
	private String teLephone;
	private String caPacity;
	
	public baiDo(int id) {
		super();
		this.id = id;
	}

	public baiDo(String namePlot, String addRess, String teLephone, String caPacity) {
		super();
		this.namePlot = namePlot;
		this.addRess = addRess;
		this.teLephone = teLephone;
		this.caPacity = caPacity;
	}
	
	public baiDo(int id, String namePlot, String addRess, String teLephone, String caPacity) {
		super();
		this.id = id;
		this.namePlot = namePlot;
		this.addRess = addRess;
		this.teLephone = teLephone;
		this.caPacity = caPacity;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNamePlot() {
		return namePlot;
	}
	public void setNamePlot(String namePlot) {
		this.namePlot = namePlot;
	}
	public String getAddRess() {
		return addRess;
	}
	public void setAddRess(String addRess) {
		this.addRess = addRess;
	}
	public String getTeLephone() {
		return teLephone;
	}
	public void setTeLephone(String teLephone) {
		this.teLephone = teLephone;
	}
	public String getCaPacity() {
		return caPacity;
	}
	public void setCaPacity(String caPacity) {
		this.caPacity = caPacity;
	}
}
