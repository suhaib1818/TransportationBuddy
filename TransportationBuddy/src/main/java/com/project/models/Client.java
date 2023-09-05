package com.project.models;

import java.sql.Date;

public class Client {
	private String username,password,name,email,phone,city,address;
	private Date date;
	private double longitude, latitude;

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Client [username=" + username + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", phone=" + phone + ", city=" + city + ", address=" + address + ", date=" + date + ", longitude="
				+ longitude + ", latitude=" + latitude + "]";
	}

	
	public Client(String username, String password, String name, String email, String phone, String city,
			String address, Date date, double longitude, double latitude) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.city = city;
		this.address = address;
		this.date = date;
		this.longitude = longitude;
		this.latitude = latitude;
	}

	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Client(String username) {
		this.username = username;
	}
}
