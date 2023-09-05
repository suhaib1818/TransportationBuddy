package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.GoodsRideDetails;
import com.project.models.Goods_Vehicle;

public class EndGoodsRideMapper implements RowMapper<GoodsRideDetails> {
	GoodsRideDetails goodsRideDetails;

	@Override
	public GoodsRideDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		goodsRideDetails = new GoodsRideDetails();
		
		goodsRideDetails.setEndKM(rs.getString("endKM"));
		goodsRideDetails.setStartKM(rs.getString("startKM"));
		goodsRideDetails.setRegistrationno(rs.getString("registrationno"));
		goodsRideDetails.setStatus(rs.getString("status"));
		
		Goods_Vehicle goods_Vehicle=new Goods_Vehicle();
		goods_Vehicle.setFair(rs.getString("fair"));
		goodsRideDetails.setGoods_Vehicle(goods_Vehicle);
		
		goodsRideDetails.setRide_id(rs.getInt("ride_id"));
		return goodsRideDetails;
	}

}
