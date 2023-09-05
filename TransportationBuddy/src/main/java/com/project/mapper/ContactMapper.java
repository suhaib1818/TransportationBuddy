package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Contact;

public class ContactMapper implements RowMapper<Contact> {

	Contact contact;

	@Override
	public Contact mapRow(ResultSet rs, int rowNum) throws SQLException {
		contact = new Contact(rs.getString("name"), rs.getString("email"), rs.getString("phone"),
				rs.getString("message"));
		return contact;
	}

}
