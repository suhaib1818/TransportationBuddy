package com.project.models;

import java.util.Date;

public class Cab_Booking {
	private int booking_id;
	private String username, source, destination, time, status, registrationno;
	Date date = new Date();
	java.sql.Date request_date = new java.sql.Date(date.getTime());
	java.sql.Date booking_date;
	private Client client;

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRegistrationno() {
		return registrationno;
	}

	public void setRegistrationno(String registrationno) {
		this.registrationno = registrationno;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public java.sql.Date getRequest_date() {
		return request_date;
	}

	public void setRequest_date(java.sql.Date request_date) {
		this.request_date = request_date;
	}

	public java.sql.Date getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(java.sql.Date booking_date) {
		this.booking_date = booking_date;
	}

	@Override
	public String toString() {
		return "Cab_Booking [username=" + username + ", source=" + source + ", destination=" + destination + ", time="
				+ time + ", status=" + status + ", registrationno=" + registrationno + ", date=" + date
				+ ", request_date=" + request_date + ", booking_date=" + booking_date + "]";
	}

	public Cab_Booking(String username, String source, String destination, String time, String status,
			String registrationno, java.sql.Date request_date, java.sql.Date booking_date) {
		super();
		this.username = username;
		this.source = source;
		this.destination = destination;
		this.time = time;
		this.status = status;
		this.registrationno = registrationno;
		this.request_date = request_date;
		this.booking_date = booking_date;
	}

	public Cab_Booking() {
		super();
		// TODO Auto-generated constructor stub
	}
}
