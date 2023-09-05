package com.project.models;

public class FeedBack {
	private String name, email, phone, feedback_text,rating;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
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

	public String getFeedback_text() {
		return feedback_text;
	}

	public void setFeedback_text(String feedback_text) {
		this.feedback_text = feedback_text;
	}

	@Override
	public String toString() {
		return "FeedBack [name=" + name + ", email=" + email + ", phone=" + phone + ", feedback_text=" + feedback_text
				+ ", id=" + id + "]";
	}

	public FeedBack() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FeedBack(String name, String email, String phone, String rating, int id, String feedback_text) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.rating = rating;
		this.feedback_text= feedback_text;
	}
}
