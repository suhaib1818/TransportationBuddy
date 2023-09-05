package com.project.models;

public class Employee {
	private String name, email, phone, city, address, age, experience, about_employee, type;
	private int id;

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

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getAbout_employee() {
		return about_employee;
	}

	public void setAbout_employee(String about_employee) {
		this.about_employee = about_employee;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Employee [name=" + name + ", email=" + email + ", phone=" + phone + ", city=" + city + ", address="
				+ address + ", age=" + age + ", experience=" + experience + ", about_employee=" + about_employee
				+ ", type=" + type + ", id=" + id + "]";
	}

	public Employee(String name, String email, String phone, String city, String address, String age, String experience,
			String about_employee, String type) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.city = city;
		this.address = address;
		this.age = age;
		this.experience = experience;
		this.about_employee = about_employee;
		this.type = type;
	}

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
}
