package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Client;
import com.project.models.GoodsVehicle_Booking;

public class GoodsRideMapper implements RowMapper<GoodsVehicle_Booking> {
	GoodsVehicle_Booking goodsVehicle_Booking;
	Client client;

	@Override
	public GoodsVehicle_Booking mapRow(ResultSet rs, int rowNum) throws SQLException {

		client = new Client();
		// System.out.println(rs.getString("name"));
		client.setUsername(rs.getString("id"));
		client.setPhone(rs.getString("phone"));
		client.setName(rs.getString("name"));

		goodsVehicle_Booking = new GoodsVehicle_Booking();
		// cab_Booking.setUsername(rs.getString("username"));
		goodsVehicle_Booking.setSource(rs.getString("source"));
		goodsVehicle_Booking.setDestination(rs.getString("destination"));
		goodsVehicle_Booking.setClient(client);

		return goodsVehicle_Booking;
	}

}
