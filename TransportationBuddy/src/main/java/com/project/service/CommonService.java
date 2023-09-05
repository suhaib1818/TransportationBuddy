package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CommonDao;
import com.project.models.Cab;
import com.project.models.Client;
import com.project.models.Contact;
import com.project.models.FeedBack;
import com.project.models.Goods_Vehicle;
import com.project.models.Notification;

@Service
public class CommonService {
	@Autowired
	CommonDao dao;

	public void addContact(Contact contact) {
		dao.insertContact(contact);
	}

	public void addFeedback(FeedBack feedBack) {
		dao.insertFeedback(feedBack);
	}
	
	public List<Notification> showNotice() {
		return dao.showNotice();
	}
	
	public List<Cab> showBookedCab() {
		return dao.showBookedCab();
	}
	
	public List<Goods_Vehicle> showBookedgoodsVehicle() {
		return dao.showBookedgoodsVehicle();
	}

	public List<Client> showClient(double lat, double lng) {
		return dao.showClient(lat,lng);
	}
	
}
