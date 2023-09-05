package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Notification;

public class NoticeMapper implements RowMapper<Notification>{
	
	Notification notification;

	@Override
	public Notification mapRow(ResultSet rs, int rowNum) throws SQLException {
		notification = new Notification(rs.getString("noticecontents"),rs.getInt("noticeid"),rs.getDate("current"));
		return notification;
	}

}
