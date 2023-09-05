package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.GoodsRideDetails;
import com.project.models.Goods_Vehicle;


public class TrackGoodsMapper implements RowMapper<GoodsRideDetails> {
	GoodsRideDetails goodsRideDetails;
	Goods_Vehicle goods_Vehicle;

	@Override
	public GoodsRideDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		goodsRideDetails = new GoodsRideDetails(rs.getString("registrationno"), rs.getString("source"),
				rs.getString("destination"), rs.getString("name"), rs.getString("phone"), rs.getString("driver"),
				rs.getDate("booking_date"), rs.getInt("ride_id"));
		goods_Vehicle = new Goods_Vehicle();
		goods_Vehicle.setTp_deviceno(rs.getString("tp_deviceno"));
		goodsRideDetails.setGoods_Vehicle(goods_Vehicle);
		return goodsRideDetails;
	}

}
