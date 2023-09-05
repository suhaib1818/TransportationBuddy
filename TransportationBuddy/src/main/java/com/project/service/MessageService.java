package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.MessageDao;
import com.project.models.Message;

@Service
public class MessageService {

	@Autowired
	MessageDao dao;

	public int sendMessage(Message message) {
		return dao.sendMessage(message);
	}

	public List<Message> showMessage(String receiverId) {
		return dao.showMessage(receiverId);
	}

	public List<Message> showSentMessage(String senderId) {
		return dao.showSentMessage(senderId);
	}

}
