package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.GoodsRideDetails;

public class ProgressGoodsMapper implements RowMapper<GoodsRideDetails> {
	GoodsRideDetails goodsRideDetails;

	@Override
	public GoodsRideDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		goodsRideDetails = new GoodsRideDetails(rs.getString("registrationno"), rs.getString("source"),
				rs.getString("destination"), rs.getString("name"), rs.getString("phone"), rs.getString("driver"),
				rs.getString("startKM"), rs.getString("endKM"), rs.getString("status"), rs.getDate("booking_date"));
		goodsRideDetails.setRide_id(rs.getInt("ride_id"));
		return goodsRideDetails;
	}

}
