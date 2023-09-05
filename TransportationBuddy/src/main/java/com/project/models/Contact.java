package com.project.models;

public class Contact {
	private String name,email,phone,message;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Contact [name=" + name + ", email=" + email + ", phone=" + phone + ", message=" + message + "]";
	}

	public Contact(String name, String email, String phone, String message) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.message = message;
	}

	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
