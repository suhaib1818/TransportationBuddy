package com.project.models;

import java.util.Date;

public class Message {
	private int id;
	private String receiverid, senderid, subject, message, r_status, s_status;
	Date date = new Date();
	java.sql.Date current = new java.sql.Date(date.getTime());
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getReceiverid() {
		return receiverid;
	}
	public void setReceiverid(String receiverid) {
		this.receiverid = receiverid;
	}
	public String getSenderid() {
		return senderid;
	}
	public void setSenderid(String senderid) {
		this.senderid = senderid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getR_status() {
		return r_status;
	}
	public void setR_status(String r_status) {
		this.r_status = r_status;
	}
	public String getS_status() {
		return s_status;
	}
	public void setS_status(String s_status) {
		this.s_status = s_status;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public java.sql.Date getCurrent() {
		return current;
	}
	public void setCurrent(java.sql.Date current) {
		this.current = current;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", receiverid=" + receiverid + ", senderid=" + senderid + ", subject=" + subject
				+ ", message=" + message + ", r_status=" + r_status + ", s_status=" + s_status + ", date=" + date
				+ ", current=" + current + "]";
	}
	public Message(String receiverid, String senderid, String subject, String message, String r_status, String s_status,
			Date date, java.sql.Date current) {
		super();
		this.receiverid = receiverid;
		this.senderid = senderid;
		this.subject = subject;
		this.message = message;
		this.r_status = r_status;
		this.s_status = s_status;
		this.date = date;
		this.current = current;
	}
	
	
	public Message(String receiverid, String senderid, String subject, String message, String r_status, String s_status,
			Date date) {
		super();
		this.receiverid = receiverid;
		this.senderid = senderid;
		this.subject = subject;
		this.message = message;
		this.r_status = r_status;
		this.s_status = s_status;
		this.date = date;
		//this.current = current;
	}
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
}
