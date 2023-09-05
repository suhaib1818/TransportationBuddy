package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.FeedBack;

public class FeebackMapper implements RowMapper<FeedBack> {

	FeedBack feedBack;

	@Override
	public FeedBack mapRow(ResultSet rs, int rowNum) throws SQLException {
		feedBack = new FeedBack(rs.getString("name"), rs.getString("email"), rs.getString("phone"),
				rs.getString("rating"), rs.getInt("id"), rs.getString("feedback_text"));
		return feedBack;
	}

}
