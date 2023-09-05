package com.project.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.models.Cab;
import com.project.models.Cab_Booking;
import com.project.models.Client;
import com.project.models.GoodsVehicle_Booking;
import com.project.models.Goods_Vehicle;
import com.project.service.ClientService;
import com.project.utility.Messages;

@Controller
@RequestMapping("/client")
public class ClientController {

	@Autowired
	ClientService service;

	@GetMapping("/client_login")
	public String Login(Model model) {
		return "client/client_login";
	}

	@PostMapping("/client_login")
	public String login(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession hs) {
		Client c = service.clientLogin(username, password);
		if (c != null) {
			model.addAttribute("client", c);
			hs.setAttribute("clientKey", c);
			hs.setAttribute("id", username);
			hs.setAttribute("role", "client");
			return "client/client_home";
		} else {
			model.addAttribute("message", Messages.INVALID_MESSAGE);
			return "client/client_login";
		}

	}

	@GetMapping("/client_logout")
	public String logout(HttpSession hs) {
		if (hs != null) {
			hs.removeAttribute("adminKey");
			hs.removeAttribute("role");
			hs.invalidate();
		}
		return "redirect:client_login";
	}

	@GetMapping("/client_registration")
	public String client_registration(Model model) {
		return "client/client_registration";
	}

	@GetMapping("/idcheck")
	public @ResponseBody String accountIdCheck(String username) {

		System.out.println(username);

		boolean isPresent = service.checkId(username);
		if (isPresent)

			return "Already Exists";
		else
			return "not";

	}

	@PostMapping("/client_Registration")
	public String postRegistration(@ModelAttribute("client") Client client, Model model) {
		service.addClient(client);
		model.addAttribute("message", Messages.CLIENT_MESSAGE);
		return "client/client_registration";
	}

	@GetMapping("/change_password")
	public String changepassword(Model model, HttpSession hs) {
		Client c = (Client) hs.getAttribute("clientKey");
		model.addAttribute("client", c);
		return "client/change_password";
	}

	@PostMapping("/post_changepassword")
	public String updatePassword(@RequestParam("password") String password, HttpSession hs, Model model) {
		Client c = (Client) hs.getAttribute("clientKey");
		String username = c.getUsername();
		System.out.println(c);
		service.updatePassword(password, username);
		model.addAttribute("message", Messages.PASSWORD_MESSAGE);
		return "/client/change_password";
	}

	@GetMapping("/editProfile")
	public String editProfile(Model model, HttpSession hs) {
		Client c = (Client) hs.getAttribute("clientKey");
		model.addAttribute("client", c);
		return "client/edit_profile";
	}

	@PostMapping("/post_editProfile")
	public String post_editProfile(@RequestParam("email") String email, @RequestParam("phone") String phone,
			HttpSession hs, Model model) {
		Client c = (Client) hs.getAttribute("clientKey");
		String username = c.getUsername();
		service.updateProfile(email, phone, username);
		Client c1 = service.viewProfile(username);
		model.addAttribute("client", c1);
		model.addAttribute("message", Messages.PROFILE_MESSAGE);
		return "/client/edit_profile";
	}

	@GetMapping("/viewProfile")
	public String viewProfile(Model model, HttpSession hs) {
		Client client = (Client) hs.getAttribute("clientKey");
		model.addAttribute(client);
		return "/client/client_viewProfile";
	}

	@GetMapping("/client_home")
	public String clientHome(Model model, HttpSession hs) {
		Client client = (Client) hs.getAttribute("clientKey");
		model.addAttribute(client);
		return "/client/client_home";
	}

	@GetMapping("/compose_client")
	public String compose(Model model) {
		return "client/compose_client";
	}

	@GetMapping("/client_bookCab")
	public String viewbookedCab(Model model) {
		List<Cab> cablist = service.showBookedCabs();
		model.addAttribute("cablist", cablist);
		return "client/client_bookCab";
	}

	@GetMapping("/booking_Cab/{registrationno}")
	public String bookCab(Model model, @PathVariable("registrationno") String registrationno) {
		model.addAttribute("registrationno", registrationno);
		return "client/booking_Cab";
	}

	@PostMapping("/booking_Cab")
	public String booking_Cab(@ModelAttribute("booking_cab") Cab_Booking cab_Booking, Model model, HttpSession hs) {
		String username = (String) hs.getAttribute("id");
		cab_Booking.setStatus("pending");
		cab_Booking.setUsername(username);
		service.addCabsBooking(cab_Booking);
		model.addAttribute("message", Messages.CABBOOKED_MESSAGE);
		return "client/booking_Cab";
	}

	@GetMapping("/client_bookGoodsVehicle")
	public String viewbookedGoodsVehicle(Model model) {
		List<Goods_Vehicle> goodslist = service.showBookedgoodsVehicle();
		model.addAttribute("goodslist", goodslist);
		return "client/client_bookGoodsVehicle";
	}

	@GetMapping("/booking_GoodsVehicle/{registrationno}")
	public String booking(Model model, @PathVariable("registrationno") String registrationno) {
		model.addAttribute("registrationno", registrationno);
		return "client/booking_GoodsVehicle";
	}

	@PostMapping("/booking_GoodsVehicle")
	public String booking_GoodsVehicle(
			@ModelAttribute("booking_goodsvehicle") GoodsVehicle_Booking goodsVehicle_Booking, Model model,
			HttpSession hs) {
		String username = (String) hs.getAttribute("id");
		goodsVehicle_Booking.setStatus("pending");
		goodsVehicle_Booking.setUsername(username);
		service.addGoodsVehicleBooking(goodsVehicle_Booking);
		model.addAttribute("message", Messages.GOODSVEHICLEBOOKED_MESSAGE);
		return "client/booking_GoodsVehicle";
	}

	@GetMapping("/bookedCabStatus")
	public String bookedCabs(@ModelAttribute("cab_booking") Cab_Booking cab_Booking, Model model, HttpSession hs) {
		String username = (String) hs.getAttribute("id");
		List<Cab_Booking> cabstatusList = service.CabStatus(username);
		model.addAttribute("cabstatusList", cabstatusList);
		return "client/bookedCabStatus";
	}

	@GetMapping("/bookedGoodsStatus")
	public String bookedGoods(@ModelAttribute("goods_booking") GoodsVehicle_Booking goodsVehicle_Booking, Model model,
			HttpSession hs) {
		String username = (String) hs.getAttribute("id");
		List<GoodsVehicle_Booking> goodsstatusList = service.GoodsStatus(username);
		model.addAttribute("goodsstatusList", goodsstatusList);
		return "client/bookedGoodsStatus";
	}

	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("title", "Tranportation Buddy");
	}
}
