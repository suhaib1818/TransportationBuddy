package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Client;

public class ClientMapper implements RowMapper<Client> {
	Client client;

	@Override
	public Client mapRow(ResultSet rs, int rowNum) throws SQLException {
		client = new Client(rs.getString("id")); //getString takes column name
		return client;
	}

}


/*
 * rs.getString("password"), rs.getString("name"), rs.getString("phone"),
 * rs.getString("city"), rs.getString("address"), rs.getDate("date"),
 * rs.getDouble("longitude"), rs.getDouble("latitude")
 */