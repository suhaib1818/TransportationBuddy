package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Cab;
import com.project.models.RideDetails;

public class TrackMapper implements RowMapper<RideDetails> {
	RideDetails rideDetails;
	Cab cab;

	@Override
	public RideDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		rideDetails = new RideDetails(rs.getString("registrationno"), rs.getString("source"),
				rs.getString("destination"), rs.getString("name"), rs.getString("phone"), rs.getString("driver"),
				rs.getDate("booking_date"), rs.getInt("ride_id"));
		cab = new Cab();
		cab.setTp_deviceno(rs.getString("tp_deviceno"));
		rideDetails.setCab(cab);
		return rideDetails;
	}

}
