package com.project.models;

public class Cab {
	String modelname,seater,cabtype,fair,uploadpicture,registrationno, tp_deviceno;

	public String getModelname() {
		return modelname;
	}

	public void setModelname(String modelname) {
		this.modelname = modelname;
	}

	public String getSeater() {
		return seater;
	}

	public void setSeater(String seater) {
		this.seater = seater;
	}

	public String getCabtype() {
		return cabtype;
	}

	public void setCabtype(String cabtype) {
		this.cabtype = cabtype;
	}

	public String getFair() {
		return fair;
	}

	public void setFair(String fair) {
		this.fair = fair;
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
		return "Cab [modelname=" + modelname + ", seater=" + seater + ", cabtype=" + cabtype + ", fair=" + fair
				+ ", registrationno=" + registrationno + ", tp_deviceno=" + tp_deviceno + "]";
	}

	public Cab(String modelname, String seater, String cabtype, String fair, String registrationno,
			String tp_deviceno) {
		super();
		this.modelname = modelname;
		this.seater = seater;
		this.cabtype = cabtype;
		this.fair = fair;
		this.registrationno = registrationno;
		this.tp_deviceno = tp_deviceno;
	}

	public Cab() {
		super();
		// TODO Auto-generated constructor stub
	}
}
