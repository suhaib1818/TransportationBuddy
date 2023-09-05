package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.RideDetails;

public class ProgressCabMapper implements RowMapper<RideDetails> {
	RideDetails rideDetails;

	@Override
	public RideDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		rideDetails = new RideDetails(rs.getString("registrationno"), rs.getString("source"),
				rs.getString("destination"), rs.getString("name"), rs.getString("phone"), rs.getString("driver"),
				rs.getString("startKM"), rs.getString("endKM"), rs.getString("status"), rs.getDate("booking_date"));
		rideDetails.setRide_id(rs.getInt("ride_id"));
		return rideDetails;
	}

}
