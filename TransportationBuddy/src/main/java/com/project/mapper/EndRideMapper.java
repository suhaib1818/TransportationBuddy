package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Cab;
import com.project.models.RideDetails;

public class EndRideMapper implements RowMapper<RideDetails> {
	RideDetails rideDetails;

	@Override
	public RideDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		rideDetails = new RideDetails();
		
		rideDetails.setEndKM(rs.getString("endKM"));
		rideDetails.setStartKM(rs.getString("startKM"));
		rideDetails.setRegistrationno(rs.getString("registrationno"));
		rideDetails.setStatus(rs.getString("status"));
		
		Cab cab=new Cab();
		cab.setFair(rs.getString("fair"));
		rideDetails.setCab(cab);
		
		rideDetails.setRide_id(rs.getInt("ride_id"));
		return rideDetails;
	}

}
