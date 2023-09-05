package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.GoodsVehicle_Booking;

public class BookedGoodsMapper implements RowMapper<GoodsVehicle_Booking> {
	GoodsVehicle_Booking goodsVehicle_Booking;

	@Override
	public GoodsVehicle_Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
		goodsVehicle_Booking = new GoodsVehicle_Booking(rs.getString("username"), rs.getString("source"),
				rs.getString("destination"), rs.getString("time"), rs.getString("status"),
				rs.getString("registrationno"), rs.getDate("request_date"), rs.getDate("booking_date"));
		goodsVehicle_Booking.setBooking_id(rs.getInt("booking_id"));
		return goodsVehicle_Booking;
	}

}
