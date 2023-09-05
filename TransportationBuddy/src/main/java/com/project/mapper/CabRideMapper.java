package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Cab_Booking;
import com.project.models.Client;

public class CabRideMapper implements RowMapper<Cab_Booking> {
	Cab_Booking cab_Booking;
	Client client;

	@Override
	public Cab_Booking mapRow(ResultSet rs, int rowNum) throws SQLException {

		client = new Client();
		// System.out.println(rs.getString("name"));
		client.setUsername(rs.getString("id"));
		client.setPhone(rs.getString("phone"));
		client.setName(rs.getString("name"));

		cab_Booking = new Cab_Booking();
		// cab_Booking.setUsername(rs.getString("username"));
		cab_Booking.setSource(rs.getString("source"));
		cab_Booking.setDestination(rs.getString("destination"));
		cab_Booking.setClient(client);

		return cab_Booking;
	}

}
