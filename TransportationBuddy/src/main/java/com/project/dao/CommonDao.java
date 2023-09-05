package com.project.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.project.mapper.CabMapper;
import com.project.mapper.ClientSearchMapper;
import com.project.mapper.GoodsVehicleMapper;
import com.project.mapper.NoticeMapper;
import com.project.models.Cab;
import com.project.models.Client;
import com.project.models.Contact;
import com.project.models.FeedBack;
import com.project.models.Goods_Vehicle;
import com.project.models.Notification;

@Repository
public class CommonDao {

	@Autowired
	JdbcTemplate tempelate;

	public void insertContact(Contact contact) {
		String strinsert = "insert into contacts(name, email, phone, message)values(?,?,?,?)";
		tempelate.update(strinsert,
				new Object[] { contact.getName(), contact.getEmail(), contact.getPhone(), contact.getMessage() });
	}

	public void insertFeedback(FeedBack feedBack) {
		String strinsert = "insert into feedbacks(name, email, phone, feedback_text, rating)values(?,?,?,?,?)";
		tempelate.update(strinsert, new Object[] { feedBack.getName(), feedBack.getEmail(), feedBack.getPhone(),
				feedBack.getFeedback_text(), feedBack.getRating() });
	}

	public List<Notification> showNotice() {
		String strsql = "select * from notification";
		List<Notification> noticelist = tempelate.query(strsql, new NoticeMapper());
		return noticelist;
	}

	public List<Cab> showBookedCab() {
		String strsql = "select * from cab_details";
		List<Cab> cablist = tempelate.query(strsql, new CabMapper());
		return cablist;
	}

	public List<Goods_Vehicle> showBookedgoodsVehicle() {
		String strsql = "select * from goodsvehicle_details";
		List<Goods_Vehicle> goodslist = tempelate.query(strsql, new GoodsVehicleMapper());
		return goodslist;
	}

	public List<Client> showClient(double lat, double lng) {
		String strsql = "Select name,phone,latitude,longitude,111.111*DEGREES(ACOS(LEAST(1.0, COS(RADIANS(?))* COS(RADIANS(latitude))* COS(RADIANS(?- longitude))+SIN(RADIANS(?))* SIN(RADIANS(latitude))))) AS distance_in_km  FROM  client_details  HAVING distance_in_km <=50.0  ORDER BY distance_in_km DESC";
		List<Client> clientsearchlist = tempelate.query(strsql, new ClientSearchMapper(), new Object[] { lat, lng, lat });
		System.out.println(clientsearchlist);
		return clientsearchlist;
	}

}
