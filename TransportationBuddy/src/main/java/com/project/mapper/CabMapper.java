package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Cab;

public class CabMapper implements RowMapper<Cab> {

	Cab cab;

	@Override
	public Cab mapRow(ResultSet rs, int rowNum) throws SQLException {
		cab = new Cab(rs.getString("modelname"), rs.getString("seater"), rs.getString("cabtype"), rs.getString("fair"),
				rs.getString("registrationno"), rs.getString("tp_deviceno"));
		return cab;
	}

}
