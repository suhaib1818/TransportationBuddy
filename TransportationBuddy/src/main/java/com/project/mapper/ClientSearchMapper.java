package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Client;

public class ClientSearchMapper implements RowMapper<Client> {
	Client client;

	@Override
	public Client mapRow(ResultSet rs, int rowNum) throws SQLException {
		client.setName(rs.getString("name"));
		client.setPhone(rs.getString("phone"));
		client.setLatitude(rs.getDouble("latitude"));
		client.setLongitude(rs.getDouble("longitude"));
		return client;
	}

}
