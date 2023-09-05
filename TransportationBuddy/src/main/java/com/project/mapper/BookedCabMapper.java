package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Cab_Booking;

public class BookedCabMapper implements RowMapper<Cab_Booking> {

	Cab_Booking cab_Booking;

	@Override
	public Cab_Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
		cab_Booking = new Cab_Booking(rs.getString("username"), rs.getString("source"), rs.getString("destination"),
				rs.getString("time"), rs.getString("status"), rs.getString("registrationno"),
				rs.getDate("request_date"), rs.getDate("booking_date"));
		cab_Booking.setBooking_id(rs.getInt("booking_id"));
		return cab_Booking;
	}

}
