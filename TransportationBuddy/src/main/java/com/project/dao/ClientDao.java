package com.project.dao;

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
import com.project.mapper.ClientMapper;
import com.project.mapper.GoodsVehicleMapper;
import com.project.models.Cab;
import com.project.models.Cab_Booking;
import com.project.models.Client;
import com.project.models.GoodsVehicle_Booking;
import com.project.models.Goods_Vehicle;

@Repository
public class ClientDao {

	Client c;

	@Autowired
	JdbcTemplate tempelate;

	public void insertClient(Client client) {
		String strinsert = "insert into client_details(id, password, name, email, phone, city, address, longitude, latitude)values(?,?,?,?,?,?,?,?,?)";
		tempelate.update(strinsert,
				new Object[] { client.getUsername(), client.getPassword(), client.getName(), client.getEmail(),
						client.getPhone(), client.getCity(), client.getAddress(), client.getLongitude(),
						client.getLatitude() });
	}

	public Client doLogin(String username, String password) {
		String strsql = "select * from client_details where id=? and password=?";
		try {
			c = new Client();
			tempelate.queryForObject(strsql, new RowMapper<Client>() {

				@Override
				public Client mapRow(ResultSet rs, int rowNum) throws SQLException {
					String name = rs.getString("name");
					String email = rs.getString("email");
					String username = rs.getString("id");
					String password = rs.getString("password");
					String phone = rs.getString("phone");
					String city = rs.getString("city");
					String address = rs.getString("address");
					Double latitude = rs.getDouble("latitude");
					Double longitude = rs.getDouble("longitude");

					c.setName(name);
					c.setEmail(email);
					c.setUsername(username);
					c.setPassword(password);
					c.setPhone(phone);
					c.setCity(city);
					c.setAddress(address);
					c.setLatitude(latitude);
					c.setLongitude(longitude);
					return c;
				}

			}, new Object[] { username, password });
		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			return null;
		}
		return c;
	}

	public void updateProfile(String email, String phone, String username) {
		String strupdate = "update client_details set email=?, phone=? where id=?";
		tempelate.update(strupdate, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, email);
				ps.setString(2, phone);
				ps.setString(3, username);
				// System.out.println(ps);
			}
		});
	}

	public Client viewProfile(String username) {
		String strsql = "select * from client_details where id=?";
		try {
			c = new Client();
			tempelate.queryForObject(strsql, new RowMapper<Client>() {

				@Override
				public Client mapRow(ResultSet rs, int rowNum) throws SQLException {
					String name = rs.getString("name");
					String email = rs.getString("email");
					String username = rs.getString("id");
					String password = rs.getString("password");
					String phone = rs.getString("phone");
					String city = rs.getString("city");
					String address = rs.getString("address");
					Double latitude = rs.getDouble("latitude");
					Double longitude = rs.getDouble("longitude");

					c.setName(name);
					c.setEmail(email);
					c.setUsername(username);
					c.setPassword(password);
					c.setPhone(phone);
					c.setCity(city);
					c.setAddress(address);
					c.setLatitude(latitude);
					c.setLongitude(longitude);
					return c;
				}

			}, new Object[] { username });
		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			return null;
		}
		return c;
	}

	public List<Goods_Vehicle> showBookedgoodsVehicle() {
		String strsql = "select * from goodsvehicle_details";
		List<Goods_Vehicle> goodslist = tempelate.query(strsql, new GoodsVehicleMapper());
		return goodslist;
	}

	public void insertGoodsVehicleBooking(GoodsVehicle_Booking goodsVehicle_Booking) {
		String strinsert = "insert into goodsvehicle_booking(username, source, destination, request_date, booking_date, time, status, registrationno) values(?,?,?,?,?,?,?,?)";
		tempelate.update(strinsert,
				new Object[] { goodsVehicle_Booking.getUsername(), goodsVehicle_Booking.getSource(),
						goodsVehicle_Booking.getDestination(), goodsVehicle_Booking.getRequest_date(),
						goodsVehicle_Booking.getBooking_date(), goodsVehicle_Booking.getTime(),
						goodsVehicle_Booking.getStatus(), goodsVehicle_Booking.getRegistrationno() });
	}

	public List<Cab> showBookedCabs() {
		String strsql = "select * from cab_details";
		List<Cab> cablist = tempelate.query(strsql, new CabMapper());
		return cablist;
	}

	public void insertCabBooking(Cab_Booking cab_Booking) {
		String strinsert = "insert into cab_booking(username, source, destination, request_date, booking_date, time, status, registrationno)values(?,?,?,?,?,?,?,?)";
		tempelate.update(strinsert,
				new Object[] { cab_Booking.getUsername(), cab_Booking.getSource(), cab_Booking.getDestination(),
						cab_Booking.getRequest_date(), cab_Booking.getBooking_date(), cab_Booking.getTime(),
						cab_Booking.getStatus(), cab_Booking.getRegistrationno() });
	}

	public List<Cab_Booking> CabStatus(String username) {
		String strsql = "select * from cab_booking where username=? and status=?";
		List<Cab_Booking> cabstatusList = tempelate.query(strsql, new BookedCabMapper(),
				new Object[] { username, "approved" });
		return cabstatusList;
	}

	public List<GoodsVehicle_Booking> GoodsStatus(String username) {
		String strsql = "select * from goodsvehicle_booking where username=? and status=?";
		List<GoodsVehicle_Booking> goodsstatusList = tempelate.query(strsql, new BookedGoodsMapper(),
				new Object[] { username, "approved" });
		return goodsstatusList;
	}

	public boolean checkId(String username) {
		String sql = "select * from client_details where id=?";

		try {
			Client client = tempelate.queryForObject(sql, new ClientMapper(), new Object[] { username });
		}

		catch (EmptyResultDataAccessException ed) {

			return false;

		}
		return true;
	}

	public void updatePassword(String password, String username) {
		String strupdate = "update client_details set password=? where id=?";
		tempelate.update(strupdate, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, password);
				ps.setString(2, username);
				System.out.println(ps);
			}
		});
	}

}
