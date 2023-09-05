package com.project.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.models.Message;
import com.project.service.MessageService;
import com.project.utility.Messages;

@Controller

public class MessageController {
	@Autowired
	MessageService service;

	@PostMapping("/compose")
	public String composeMessage(@ModelAttribute("message") Message message, HttpSession hs, Model model) {
		message.setS_status("true");
		message.setR_status("true");
		String rl = (String) hs.getAttribute("role");

		String senderid = (String) hs.getAttribute("id");

		message.setSenderid(senderid);
		int status = service.sendMessage(message);

		// System.out.println(rl);
		if (status > 0) {
			if (rl.equals("admin")) {
				model.addAttribute("message", Messages.MSG_MESSAGE);
				return "/admin/compose_admin";
			} else {
				model.addAttribute("message", Messages.MSG_MESSAGE);
				return "/client/compose_client";
			}
		} else {
			return null;
		}

	}

	@GetMapping("/inbox")
	public String Inbox(Model model, HttpSession hs) {
		String userType = (String) hs.getAttribute("role");
		String receiverId = "";

		receiverId = (String) hs.getAttribute("id");
		// System.out.println(receiverId);
		List<Message> messageList = service.showMessage(receiverId);
		// System.out.println(messageList);
		model.addAttribute("messageList", messageList);

		if (userType.equalsIgnoreCase("Admin")) {

			return "/admin/admin_inbox";
		}

		if (userType.equalsIgnoreCase("Client")) {

			return "/client/client_inbox";

		}

		return null;
	}

	@GetMapping("/sent")
	public String Sent(Model model, HttpSession hs) {
		String userType = (String) hs.getAttribute("role");
		String senderId = "";

		senderId = (String) hs.getAttribute("id");
		List<Message> messageList = service.showSentMessage(senderId);
		model.addAttribute("messageList", messageList);

		if (userType.equalsIgnoreCase("Admin")) {

			return "/admin/admin_sent";
		}

		if (userType.equalsIgnoreCase("Client")) {

			return "/client/client_sent";

		}

		return null;
	}

}
