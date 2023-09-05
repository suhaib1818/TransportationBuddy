package com.project.models;

public class Goods_Vehicle {
	String modelname,capacity,size,fair,uploadpicture,help,registrationno, tp_deviceno;

	public String getModelname() {
		return modelname;
	}

	public void setModelname(String modelname) {
		this.modelname = modelname;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getFair() {
		return fair;
	}

	public void setFair(String fair) {
		this.fair = fair;
	}

	public String getHelp() {
		return help;
	}

	public void setHelp(String help) {
		this.help = help;
	}

	public String getRegistrationno() {
		return registrationno;
	}

	public void setRegistrationno(String registrationno) {
		this.registrationno = registrationno;
	}

	public String getTp_deviceno() {
		return tp_deviceno;
	}

	public void setTp_deviceno(String tp_deviceno) {
		this.tp_deviceno = tp_deviceno;
	}

	@Override
	public String toString() {
		return "Goods_Vehicle [modelname=" + modelname + ", capacity=" + capacity + ", size=" + size + ", fair=" + fair
				+ ", help=" + help + ", registrationno=" + registrationno + ", tp_deviceno=" + tp_deviceno + "]";
	}

	public Goods_Vehicle(String modelname, String capacity, String size, String fair, String help,
			String registrationno, String tp_deviceno) {
		super();
		this.modelname = modelname;
		this.capacity = capacity;
		this.size = size;
		this.fair = fair;
		this.help = help;
		this.registrationno = registrationno;
		this.tp_deviceno = tp_deviceno;
	}

	public Goods_Vehicle() {
		super();
		// TODO Auto-generated constructor stub
	}
}
