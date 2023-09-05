package com.project.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.AdminDao;
import com.project.models.Admin;
import com.project.models.Cab;
import com.project.models.Cab_Booking;
import com.project.models.Contact;
import com.project.models.Employee;
import com.project.models.FeedBack;
import com.project.models.GoodsRideDetails;
import com.project.models.GoodsVehicle_Booking;
import com.project.models.Goods_Vehicle;
import com.project.models.Notification;
import com.project.models.RideDetails;

@Service
public class AdminService {

	@Autowired
	AdminDao dao;

	public Admin adminLogin(String adminid, String password) {
		Admin a = dao.doLogin(adminid, password);
		return a;
	}

	public List<Contact> showContacts() {
		return dao.showContacts();
	}

	public List<FeedBack> showFeebacks() {
		return dao.showFeedbacks();
	}

	public FeedBack showReview(int id) {
		return dao.showReview(id);
	}

	public void addEmployee(Employee employee) {
		dao.insertEmployee(employee);
	}

	public List<Employee> showEmployees() {
		return dao.showEmployees();
	}

	public Employee showInfo(int id) {
		return dao.showAddInfo(id);
	}

	public void addNotices(Notification notification) {
		dao.insertNotice(notification);
	}

	public List<Notification> showNotice() {
		return dao.showNotice();
	}

	public void addCab(Cab cab) {
		dao.insertCab(cab);
	}

	public void addGoodsVehicle(Goods_Vehicle goodsvehicle) {
		dao.insertGoodsVehicle(goodsvehicle);
	}

	public List<Cab> showCab() {
		return dao.showCab();
	}

	public List<Goods_Vehicle> showGoodsVechile() {
		return dao.showGoodsVehicle();
	}

	public List<Cab_Booking> showBookedCab() {
		return dao.showBookedCab();
	}

	public void showPendingCabRequest(int bkid, String regno) {
		dao.showPendingCabRequest(bkid, regno);
	}

	public List<GoodsVehicle_Booking> showBookedGoods() {
		return dao.showBookedGoods();
	}

	public void showPendingGoodsRequest(int bkid, String regno) {
		dao.showPendingGoodsRequest(bkid, regno);
	}

	public List<Cab_Booking> showConfirmCab() {
		return dao.showConfirmCab();
	}

	public Cab_Booking startride(String registrationno, Date booking_date) {
		return dao.startride(registrationno, booking_date);
	}

	public List<Employee> viewDriver() {
		return dao.viewDriver();
	}

	public void addRide(RideDetails rideDetails) {
		dao.addRide(rideDetails);
	}

	public List<RideDetails> showProgressCab() {
		return dao.showProgressCab();
	}

	public RideDetails EndCabRide(RideDetails ridedetails) {
		return dao.endCabRide(ridedetails);
	}

	public void UpdateCabBooking(Cab_Booking cab_Booking) {
		dao.updateCabBooking(cab_Booking);
	}

	public List<RideDetails> TrackCabRide() {
		return dao.TrackCabRides();
	}

	public List<GoodsVehicle_Booking> showConfirmGoods() {
		return dao.showConfirmGoods();
	}

	public GoodsVehicle_Booking startgoodsride(String registrationno, Date booking_date) {
		return dao.startgoodsride(registrationno, booking_date);
	}

	public List<GoodsRideDetails> showProgressGoods() {
		return dao.showProgressGoods();
	}

	public GoodsRideDetails EndGoodsRide(GoodsRideDetails goods_RideDetails) {
		return dao.endGoodsRide(goods_RideDetails);
	}

	public void UpdateGoodsBooking(GoodsVehicle_Booking goodsVehicle_Booking) {
		dao.updateGoodsBooking(goodsVehicle_Booking);
	}

	public List<GoodsRideDetails> TrackGoodsRide() {
		return dao.TrackGoodsRides();
	}

	public void addGoodsRide(GoodsRideDetails goodsRideDetails) {
		dao.addGoodsRide(goodsRideDetails);
	}

}
