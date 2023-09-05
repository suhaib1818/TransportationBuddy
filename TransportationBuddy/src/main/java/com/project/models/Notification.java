package com.project.models;

import java.util.Date;

public class Notification {
	private String noticecontents;
	private int noticeid;
	Date date = new Date();
	java.sql.Date current = new java.sql.Date(date.getTime());
	
	public String getNoticecontents() {
		return noticecontents;
	}
	public void setNoticecontents(String noticecontents) {
		this.noticecontents = noticecontents;
	}
	public int getNoticeid() {
		return noticeid;
	}
	public void setNoticeid(int noticeid) {
		this.noticeid = noticeid;
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
		return "Notification [noticecontents=" + noticecontents + ", noticeid=" + noticeid + ", date=" + date + "]";
	}
	public Notification(String noticecontents, int noticeid, java.sql.Date current) {
		super();
		this.noticecontents = noticecontents;
		this.noticeid = noticeid;
		this.current = current;
	}
	public Notification() {
		super();
		// TODO Auto-generated constructor stub
	}
}
