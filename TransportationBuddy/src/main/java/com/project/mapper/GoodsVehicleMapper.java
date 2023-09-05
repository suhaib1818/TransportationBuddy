package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Goods_Vehicle;

public class GoodsVehicleMapper implements RowMapper<Goods_Vehicle> {

	Goods_Vehicle goods_Vehicle;

	@Override
	public Goods_Vehicle mapRow(ResultSet rs, int rowNum) throws SQLException {
		goods_Vehicle = new Goods_Vehicle(rs.getString("modelname"), rs.getString("capacity"), rs.getString("size"),
				rs.getString("fair"), rs.getString("help"), rs.getString("registrationno"),
				rs.getString("tp_deviceno"));
		return goods_Vehicle;
	}

}
