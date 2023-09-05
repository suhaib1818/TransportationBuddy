package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ClientDao;
import com.project.models.Cab;
import com.project.models.Cab_Booking;
import com.project.models.Client;
import com.project.models.GoodsVehicle_Booking;
import com.project.models.Goods_Vehicle;

@Service
public class ClientService {

	@Autowired
	ClientDao dao;

	public void addClient(Client client) {
		dao.insertClient(client);
	}

	public Client clientLogin(String username, String password) {
		return dao.doLogin(username, password);
	}

	public void updateProfile(String email, String phone, String username) {
		dao.updateProfile(email, phone, username);
	}

	public Client viewProfile(String username) {
		return dao.viewProfile(username);
	}

	public List<Goods_Vehicle> showBookedgoodsVehicle() {
		return dao.showBookedgoodsVehicle();
	}

	public void addGoodsVehicleBooking(GoodsVehicle_Booking goodsVehicle_Booking) {
		dao.insertGoodsVehicleBooking(goodsVehicle_Booking);
	}

	public List<Cab> showBookedCabs() {
		return dao.showBookedCabs();
	}

	public void addCabsBooking(Cab_Booking cab_Booking) {
		dao.insertCabBooking(cab_Booking);
	}

	public List<Cab_Booking> CabStatus(String username) {
		return dao.CabStatus(username);
	}

	public List<GoodsVehicle_Booking> GoodsStatus(String username) {
		return dao.GoodsStatus(username);
	}

	public boolean checkId(String username) {
		return dao.checkId(username);
	}

	public void updatePassword(String password, String username) {
		dao.updatePassword(password, username);
	}

}
