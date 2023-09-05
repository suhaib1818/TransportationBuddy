package com.project.models;

import java.util.Date;

public class GoodsRideDetails {
	private int ride_id;
	private String registrationno, source, destination, name, phone, driver, startKM, endKM, status;
	Date date = new Date();
	java.sql.Date booking_date;
	GoodsVehicle_Booking goodsVehicle_Booking;
	Goods_Vehicle goods_Vehicle;

	public GoodsVehicle_Booking getGoodsVehicle_Booking() {
		return goodsVehicle_Booking;
	}

	public void setGoodsVehicle_Booking(GoodsVehicle_Booking goodsVehicle_Booking) {
		this.goodsVehicle_Booking = goodsVehicle_Booking;
	}

	public Goods_Vehicle getGoods_Vehicle() {
		return goods_Vehicle;
	}

	public void setGoods_Vehicle(Goods_Vehicle goods_Vehicle) {
		this.goods_Vehicle = goods_Vehicle;
	}

	public int getRide_id() {
		return ride_id;
	}

	public void setRide_id(int ride_id) {
		this.ride_id = ride_id;
	}

	public String getRegistrationno() {
		return registrationno;
	}

	public void setRegistrationno(String registrationno) {
		this.registrationno = registrationno;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getStartKM() {
		return startKM;
	}

	public void setStartKM(String startKM) {
		this.startKM = startKM;
	}

	public String getEndKM() {
		return endKM;
	}

	public void setEndKM(String endKM) {
		this.endKM = endKM;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public java.sql.Date getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(java.sql.Date booking_date) {
		this.booking_date = booking_date;
	}

	public GoodsRideDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GoodsRideDetails(String registrationno, String source, String destination, String name,
			String phone, String driver, String startKM, String endKM, String status, java.sql.Date booking_date) {
		super();
		this.registrationno = registrationno;
		this.source = source;
		this.destination = destination;
		this.name = name;
		this.phone = phone;
		this.driver = driver;
		this.startKM = startKM;
		this.endKM = endKM;
		this.status = status;
		this.booking_date = booking_date;
	}

	public GoodsRideDetails(int ride_id, String registrationno, String source, String destination, String name,
			String phone, String driver, String startKM, String endKM, String status, Date date,
			java.sql.Date booking_date, GoodsVehicle_Booking goodsVehicle_Booking, Goods_Vehicle goods_Vehicle) {
		super();
		this.ride_id = ride_id;
		this.registrationno = registrationno;
		this.source = source;
		this.destination = destination;
		this.name = name;
		this.phone = phone;
		this.driver = driver;
		this.startKM = startKM;
		this.endKM = endKM;
		this.status = status;
		this.date = date;
		this.booking_date = booking_date;
		this.goodsVehicle_Booking = goodsVehicle_Booking;
		this.goods_Vehicle = goods_Vehicle;
	}
	
	public GoodsRideDetails(String registrationno, String source, String destination, String name, String phone,
			String driver, java.sql.Date booking_date, int ride_id) {
		super();
		this.registrationno = registrationno;
		this.source = source;
		this.destination = destination;
		this.name = name;
		this.phone = phone;
		this.driver = driver;
		this.booking_date = booking_date;
		this.ride_id = ride_id;
	}
	
}
