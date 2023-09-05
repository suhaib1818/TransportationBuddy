package com.project.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.mapper.BookedCabMapper;
import com.project.mapper.BookedGoodsMapper;
import com.project.mapper.CabMapper;
import com.project.mapper.CabRideMapper;
import com.project.mapper.ContactMapper;
import com.project.mapper.EmployeeMapper;
import com.project.mapper.EndGoodsRideMapper;
import com.project.mapper.EndRideMapper;
import com.project.mapper.FeebackMapper;
import com.project.mapper.GoodsRideMapper;
import com.project.mapper.GoodsVehicleMapper;
import com.project.mapper.NoticeMapper;
import com.project.mapper.ProgressCabMapper;
import com.project.mapper.ProgressGoodsMapper;
import com.project.mapper.TrackGoodsMapper;
import com.project.mapper.TrackMapper;
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

@Repository
public class AdminDao {

	Admin a;

	@Autowired
	JdbcTemplate template;

	public Admin doLogin(String adminid, String password) {
		String strsql = "select * from admin_details where id=? and password=?";
		try {
			a = new Admin();
			template.queryForObject(strsql, new RowMapper<Admin>() {

				@Override
				public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
					String name = rs.getString("name");
					String email = rs.getString("email");
					String id = rs.getString("id");
					String password = rs.getString("password");
					String phone = rs.getString("phone");

					a.setName(name);
					a.setEmail(email);
					a.setAdminid(id);
					a.setPassword(password);
					a.setPhone(phone);
					return a;
				}

			}, new Object[] { adminid, password });
		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			return null;
		}
		return a;
	}

	public List<Contact> showContacts() {
		String strsql = "select * from contacts";
		List<Contact> contactlist = template.query(strsql, new ContactMapper());
		return contactlist;
	}

	public List<FeedBack> showFeedbacks() {
		String strsqlfeed = "select * from feedbacks";
		List<FeedBack> feedbacklist = template.query(strsqlfeed, new FeebackMapper());
		return feedbacklist;
	}

	public FeedBack showReview(int id) {
		String strsql = "select * from feedbacks where id=?";
		FeedBack f = template.queryForObject(strsql, new FeebackMapper(), new Object[] { id });
		return f;
	}

	public void insertEmployee(Employee employee) {
		String strinsert = "insert into employee_details(name, email, phone, city, address, age, experience, about_employee, type) values (?,?,?,?,?,?,?,?,?)";
		template.update(strinsert,
				new Object[] { employee.getName(), employee.getEmail(), employee.getPhone(), employee.getCity(),
						employee.getAddress(), employee.getAge(), employee.getExperience(),
						employee.getAbout_employee(), employee.getType() });
	}

	public List<Employee> showEmployees() {
		String strsqlemp = "select * from employee_details";
		List<Employee> employeelist = template.query(strsqlemp, new EmployeeMapper());
		return employeelist;
	}

	public Employee showAddInfo(int id) {
		Employee e;
		String strsql = "select * from employee_details where id=?";

		try {
			e = template.queryForObject(strsql, new EmployeeMapper(), new Object[] { id });
		} catch (EmptyResultDataAccessException e1) {
			return null;
		}
		return e;
	}

	public void insertNotice(Notification notification) {
		String strinsert = "insert into notification(noticecontents, current) values(?,?)";
		template.update(strinsert, new Object[] { notification.getNoticecontents(), notification.getCurrent() });
	}

	public List<Notification> showNotice() {
		String strsql = "select * from notification";
		List<Notification> noticelist = template.query(strsql, new NoticeMapper());
		return noticelist;
	}

	public void insertCab(Cab cab) {
		String strisert = "insert into cab_details(modelname, seater, cabtype, fair, registrationno, tp_deviceno) values(?,?,?,?,?,?)";
		template.update(strisert, new Object[] { cab.getModelname(), cab.getSeater(), cab.getCabtype(), cab.getFair(),
				cab.getRegistrationno(), cab.getTp_deviceno() });
	}

	public void insertGoodsVehicle(Goods_Vehicle goodsvehicle) {
		String strinsert = "insert into goodsvehicle_details(modelname, capacity, size, fair, help, registrationno, tp_deviceno) values(?,?,?,?,?,?,?)";
		template.update(strinsert,
				new Object[] { goodsvehicle.getModelname(), goodsvehicle.getCapacity(), goodsvehicle.getSize(),
						goodsvehicle.getFair(), goodsvehicle.getHelp(), goodsvehicle.getRegistrationno(),
						goodsvehicle.getTp_deviceno() });
	}

	public List<Cab> showCab() {
		String strsql = "select * from cab_details";
		List<Cab> cablist = template.query(strsql, new CabMapper());
		return cablist;
	}

	public List<Goods_Vehicle> showGoodsVehicle() {
		String strsql = "select * from goodsvehicle_details";
		List<Goods_Vehicle> goodsvehiclelist = template.query(strsql, new GoodsVehicleMapper());
		return goodsvehiclelist;
	}

	public List<Cab_Booking> showBookedCab() {
		String strsql = "select * from cab_booking where status=?";
		List<Cab_Booking> bookedcablist = template.query(strsql, new BookedCabMapper(), new Object[] { "pending" });
		return bookedcablist;
	}

	public void showPendingCabRequest(int bkid, String regno) {

		String strupdate = "update cab_booking set status=? where booking_id=?";
		template.update(strupdate, new Object[] { "approved", bkid });

//		String vehicle_update="update cab_details set status=? where registrationno=?";
//		template.update(vehicle_update, new Object[] { "busy", regno });

	}

	public List<GoodsVehicle_Booking> showBookedGoods() {
		String strsql = "select * from goodsvehicle_booking where status=?";
		List<GoodsVehicle_Booking> bookedgoodslist = template.query(strsql, new BookedGoodsMapper(),
				new Object[] { "pending" });
		return bookedgoodslist;
	}

	public void showPendingGoodsRequest(int bkid, String regno) {
		String strupdate = "update goodsvehicle_booking set status=? where booking_id=?";
		template.update(strupdate, new Object[] { "approved", bkid });
	}

	public List<Cab_Booking> CabStatus(String username) {
		String strsql = "select * from cab_booking where username=? and status=?";
		List<Cab_Booking> cabstatusList = template.query(strsql, new BookedCabMapper(),
				new Object[] { username, "approved" });
		return cabstatusList;
	}

	public List<Cab_Booking> showConfirmCab() {
		String strsql = "select * from cab_booking where status=?";
		List<Cab_Booking> confirmcablist = template.query(strsql, new BookedCabMapper(), new Object[] { "approved" });
		return confirmcablist;
	}

	public Cab_Booking startride(String registrationno, Date booking_date) {
		String strsql = "select c.id, c.name,c.phone, cb.source,cb.destination ,cb.username from client_details c,cab_booking cb where c.id=cb.username and cb.registrationno=? and booking_date=?";
		return template.queryForObject(strsql, new CabRideMapper(), new Object[] { registrationno, booking_date });
	}

	public List<Employee> viewDriver() {
		String strsql = "select * from employee_details where type=?";
		List<Employee> driverlist = template.query(strsql, new EmployeeMapper(), new Object[] { "Driver" });
		return driverlist;
	}

	public void addRide(RideDetails rideDetails) {
		String strsql = "insert into ride_details(registrationno, booking_date, source, destination, name, phone, driver, startKM, endKM, status) values(?,?,?,?,?,?,?,?,?,?)";
		template.update(strsql, new Object[] { rideDetails.getRegistrationno(), rideDetails.getBooking_date(),
				rideDetails.getSource(), rideDetails.getDestination(), rideDetails.getName(), rideDetails.getPhone(),
				rideDetails.getDriver(), rideDetails.getStartKM(), rideDetails.getEndKM(), rideDetails.getStatus() });
	}

	public List<RideDetails> showProgressCab() {
		String strsql = "select * from ride_details where status=?";
		List<RideDetails> progresscablist = template.query(strsql, new ProgressCabMapper(),
				new Object[] { "in progress" });
		return progresscablist;
	}

	public RideDetails endCabRide(RideDetails ridedetails) {
		String strupdate = "update ride_details set status=?, endKM=? where registrationno=? and booking_date=?";

		template.update(strupdate, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, "completed");
				ps.setString(2, ridedetails.getEndKM());
				ps.setString(3, ridedetails.getRegistrationno());
				ps.setDate(4, ridedetails.getBooking_date());
			}

		});

		String sql = "select r.startKM,r.status,r.ride_id, r.endKM , r.registrationno, c.fair from ride_details r, cab_details c where r.registrationno = c.registrationno and r.status='completed' and r.ride_id=?";
		return template.queryForObject(sql, new EndRideMapper(), new Object[] { ridedetails.getRide_id() });
	}

	public void updateCabBooking(Cab_Booking cab_Booking) {
		String strupdate = "update cab_booking set status=? where registrationno=? and booking_date=?";
		template.update(strupdate, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, "completed");
				ps.setString(2, cab_Booking.getRegistrationno());
				ps.setDate(3, cab_Booking.getBooking_date());
			}

		});
	}

	public List<RideDetails> TrackCabRides() {
		String strsql = "select r.booking_date, r.ride_id, r.source, r.destination, r.name, r.phone, r.driver,r.registrationno, c.tp_deviceno from ride_details r, cab_details c where r.registrationno = c.registrationno and r.status =?";
		List<RideDetails> trackcablist = template.query(strsql, new TrackMapper(), new Object[] { "in progress" });
		return trackcablist;
	}

	public List<GoodsVehicle_Booking> showConfirmGoods() {
		String strsql = "select * from goodsvehicle_booking where status=?";
		List<GoodsVehicle_Booking> confirmgoodslist = template.query(strsql, new BookedGoodsMapper(),
				new Object[] { "approved" });
		return confirmgoodslist;
	}

	public GoodsVehicle_Booking startgoodsride(String registrationno, Date booking_date) {
		String strsql = "select c.id, c.name,c.phone, gb.source,gb.destination ,gb.username from client_details c,goodsvehicle_booking gb where c.id=gb.username and gb.registrationno=? and booking_date=?";
		return template.queryForObject(strsql, new GoodsRideMapper(), new Object[] { registrationno, booking_date });
	}

	public List<GoodsRideDetails> showProgressGoods() {
		String strsql = "select * from goodsride_details where status=?";
		List<GoodsRideDetails> progressgoodslist = template.query(strsql, new ProgressGoodsMapper(),
				new Object[] { "in progress" });
		return progressgoodslist;
	}

	public GoodsRideDetails endGoodsRide(GoodsRideDetails goodsride_details) {
		String strupdate = "update goodsride_details set status=?, endKM=? where registrationno=? and booking_date=?";

		template.update(strupdate, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, "completed");
				ps.setString(2, goodsride_details.getEndKM());
				ps.setString(3, goodsride_details.getRegistrationno());
				ps.setDate(4, goodsride_details.getBooking_date());
			}

		});

		String sql = "select r.startKM,r.status,r.ride_id, r.endKM , r.registrationno, c.fair from goodsride_details r, goodsvehicle_details c where r.registrationno = c.registrationno and r.status='completed' and r.ride_id=?";
		return template.queryForObject(sql, new EndGoodsRideMapper(), new Object[] { goodsride_details.getRide_id() });
	}

	public void updateGoodsBooking(GoodsVehicle_Booking goodsVehicle_Booking) {
		String strupdate = "update goodsvehicle_booking set status=? where registrationno=? and booking_date=?";
		template.update(strupdate, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, "completed");
				ps.setString(2, goodsVehicle_Booking.getRegistrationno());
				ps.setDate(3, goodsVehicle_Booking.getBooking_date());
			}

		});
	}

	public List<GoodsRideDetails> TrackGoodsRides() {
		String strsql = "select r.booking_date, r.ride_id, r.source, r.destination, r.name, r.phone, r.driver,r.registrationno, c.tp_deviceno from goodsride_details r, goodsvehicle_details c where r.registrationno = c.registrationno and r.status=?";
		List<GoodsRideDetails> trackgoodslist = template.query(strsql, new TrackGoodsMapper(),
				new Object[] { "in progress" });
		return trackgoodslist;
	}

	public void addGoodsRide(GoodsRideDetails goodsRideDetails) {
		String strsql = "insert into goodsride_details(registrationno, booking_date, source, destination, name, phone, driver, startKM, endKM, status) values(?,?,?,?,?,?,?,?,?,?)";
		template.update(strsql,
				new Object[] { goodsRideDetails.getRegistrationno(), goodsRideDetails.getBooking_date(),
						goodsRideDetails.getSource(), goodsRideDetails.getDestination(), goodsRideDetails.getName(),
						goodsRideDetails.getPhone(), goodsRideDetails.getDriver(), goodsRideDetails.getStartKM(),
						goodsRideDetails.getEndKM(), goodsRideDetails.getStatus() });
	}

}
