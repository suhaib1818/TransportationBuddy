package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Message;

public class MessageMapper implements RowMapper<Message> {

	Message message;

	@Override
	public Message mapRow(ResultSet rs, int rowNum) throws SQLException {
		message = new Message(rs.getString("receiverid"), rs.getString("senderid"), rs.getString("subject"),
				rs.getString("message"), rs.getString("r_status"), rs.getString("s_status"), rs.getDate("date"));
		return message;
	}

}
