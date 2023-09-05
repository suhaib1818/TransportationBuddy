package com.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.models.Cab;
import com.project.models.Client;
import com.project.models.Contact;
import com.project.models.FeedBack;
import com.project.models.Goods_Vehicle;
import com.project.models.Notification;
import com.project.service.CommonService;
import com.project.utility.Messages;

@Controller
public class CommonController {

	@Autowired
	CommonService service;

	@GetMapping("/")
	public String homePage(Model model) {
		List<Notification> noticelist = service.showNotice();
		model.addAttribute("noticelist", noticelist);
		return "common_jsp/index";
	}

	@GetMapping("/contactus")
	public String contactUs(Model model) {
		return "common_jsp/contactus";
	}

	@PostMapping("/contact")
	public String postContact(@ModelAttribute("contact") Contact contact, Model model) {
		// System.out.println(contact);
		service.addContact(contact);// calling addContact of service class
		model.addAttribute("message", Messages.CONTACTUS_MESSAGE);
		return "/common_jsp/contactus";
	}

	@GetMapping("/aboutus")
	public String aboutUs(Model model) {
		return "common_jsp/aboutus";
	}

	@GetMapping("/feedback")
	public String feedback(Model model) {
		return "common_jsp/feedback";
	}

	@PostMapping("/feedBack")
	public String postFeedback(@ModelAttribute("feedBack") FeedBack feedBack, Model model) {
		service.addFeedback(feedBack);
		model.addAttribute("message", Messages.FEEDBACK_MESSAGE);
		return "common_jsp/feedback";
	}

	@GetMapping("/goodsVehicle_details")
	public String goodsVehicle(Model model) {
		return "admin/goodsVehicle_details";
	}

	@GetMapping("/book_goodsVehicle")
	public String viewbookedGoodsVehicle(Model model) {
		List<Goods_Vehicle> goodslist = service.showBookedgoodsVehicle();
		model.addAttribute("goodslist", goodslist);
		return "common_jsp/book_goodsVehicle";
	}

	@GetMapping("/cab_details")
	public String cabDetails(Model model) {
		return "admin/cab_details";
	}

	@GetMapping("/book_cab")
	public String viewBookedCab(Model model) {
		List<Cab> cablist = service.showBookedCab();
		model.addAttribute("cablist", cablist);
		return "common_jsp/book_cab";
	}

	@GetMapping("/searchbylocation1")
	public @ResponseBody List<Client> locateOwner(@RequestParam("lat") double lat, @RequestParam("lng") double lng,
			Model model) {
		System.out.println("Latitude " + lat);
		System.out.println("Longitude" + lng);
		List<Client> clientsearchlist = service.showClient(lat, lng);
		System.out.println("in controller" + clientsearchlist);
		return clientsearchlist;
	}

	@GetMapping("/searchbylocation")
	public String searchClient(Model model) {
		return "common_jsp/searchbylocation";
	}

	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("title", "Tranportation Buddy");
	}

	@GetMapping("/test")
	public String test(Model model) {
		return "common_jsp/test";
	}

	@GetMapping("/test2")
	public String test2(Model model) {
		return "common_jsp/test2";
	}

}
