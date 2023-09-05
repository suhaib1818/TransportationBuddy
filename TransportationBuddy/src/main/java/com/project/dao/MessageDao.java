package com.project.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.project.mapper.MessageMapper;
import com.project.models.Message;

@Repository
public class MessageDao {

	@Autowired
	JdbcTemplate template;

	public int sendMessage(Message message) {
		String strinsert = "insert into message(receiverid, senderid, subject, message, r_status, s_status, date) values(?,?,?,?,?,?,?)";
		int status = template.update(strinsert,
				new Object[] { message.getReceiverid(), message.getSenderid(), message.getSubject(),
						message.getMessage(), message.getR_status(), message.getS_status(), message.getDate() });
		return status;
	}

	public List<Message> showMessage(String receiverId) {
		String strsql = "select * from message where receiverid=? and r_status='true'";
		List<Message> messageList = template.query(strsql, new MessageMapper(), receiverId);
		return messageList;
	}

	public List<Message> showSentMessage(String senderId) {
		String strsql = "select * from message where senderid=? and s_status='true'";
		List<Message> messagelist = template.query(strsql, new MessageMapper(), senderId);
		return messagelist;
	}
}
