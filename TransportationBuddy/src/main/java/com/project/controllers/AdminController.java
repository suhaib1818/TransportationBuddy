package com.project.controllers;

import java.sql.Date;
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

import com.project.models.Admin;
import com.project.models.Cab;
import com.project.models.Cab_Booking;
import com.project.models.Contact;
import com.project.models.Employee;
import com.project.models.FeedBack;
import com.project.models.GoodsRideDetails;
import com.project.models.GoodsVehicle_Booking;
import com.project.models.Goods_Vehicle;
import com.project.models.Notification;
import com.project.models.RideDetails;
import com.project.service.AdminService;
import com.project.utility.Messages;

@Controller
@RequestMapping("/admin") // it is a class level annotation
public class AdminController {

	@Autowired
	AdminService service;

	@GetMapping("/adminHome")
	public String adminHome(Model model) {
		return "/admin/admin_home";
	}

	@GetMapping("/viewContacts")
	public String viewContacts(Model model) {
		List<Contact> contcatlist = service.showContacts();
		model.addAttribute("contactlist", contcatlist);
		return "/admin/viewcontacts";
	}

	@GetMapping("/viewFeedback")
	public String viewFeedbacks(Model model) {
		List<FeedBack> feedbacklist = service.showFeebacks();
		model.addAttribute("feedbacklist", feedbacklist);
		return "/admin/viewfeedback";
	}

	@GetMapping("/viewemployee")
	public String viewEmployees(Model model) {
		List<Employee> employeelist = service.showEmployees();
		model.addAttribute("employeelist", employeelist);
		return "/admin/viewemployee";
	}

	@GetMapping("/adminPanel")
	public String adminPanel(Model model) {
		return "admin/adminPanel";
	}

	@PostMapping("/login")
	public String login(Model model, @RequestParam("adminid") String adminid, @RequestParam("password") String password,
			HttpSession hs) {
		// System.out.println(adminid+password);
		Admin a = service.adminLogin(adminid, password);
		if (a != null) {
			// System.out.println(a);
			model.addAttribute("admin", a);
			hs.setAttribute("adminKey", a);
			hs.setAttribute("id", adminid);
			hs.setAttribute("role", "admin");
			return "admin/admin_home";
		} else {
			model.addAttribute("message", Messages.INVALID_MESSAGE);
			return "admin/adminPanel";
		}

	}

	@GetMapping("/admin_logout")
	public String logout(HttpSession hs) {
		if (hs != null) {
			hs.removeAttribute("adminKey");
			hs.removeAttribute("role");
			hs.invalidate();
		}
		return "admin/adminPanel";
	}

	@GetMapping("/review/{id}")
	public String getReview(@PathVariable("id") int id, Model model) {
		// System.out.println(id);
		FeedBack f = service.showReview(id);
		model.addAttribute("feedback", f);
		return "admin/feedback_review";
	}

	@GetMapping("/employee")
	public String employeeDetails(Model model) {
		return "/admin/employee";
	}

	@PostMapping("/employee")
	public String postEmployee(@ModelAttribute("employee") Employee employee, Model model) {
		service.addEmployee(employee);
		model.addAttribute("message", Messages.EMPLOYEE_MESSAGE);
		return "/admin/employee";
	}

	@GetMapping("/additionalinfo/{id}")
	public String getAdditionalInfo(@PathVariable("id") int id, Model model) {
		Employee e = service.showInfo(id);
		model.addAttribute("employee", e);
		return "admin/additionl_info";
	}

	@GetMapping("/notice")
	public String setNotice(Model model) {
		return "admin/notice";
	}

	@PostMapping("/notice")
	public String addNotice(@ModelAttribute("notification") Notification notification, Model model) {
		service.addNotices(notification);
		model.addAttribute("message", Messages.NOTIFICATION_MESSAGE);
		return "/admin/notice";
	}

	@GetMapping("/viewnotice")
	public String viewNotice(Model model) {
		List<Notification> noticelist = service.showNotice();
		model.addAttribute("noticelist", noticelist);
		return "/admin/viewnotice";
	}

	@GetMapping("/cab")
	public String setCab(Model model) {
		return "admin/cab_details";
	}

	@PostMapping("/cab")
	public String addCab(@ModelAttribute("cab") Cab cab, Model model) {
		service.addCab(cab);
		model.addAttribute("message", Messages.CAB_MESSAGE);
		return "/admin/cab_details";
	}

	@GetMapping("/viewcab")
	public String viewCab(Model model) {
		List<Cab> cablist = service.showCab();
		model.addAttribute("cablist", cablist);
		return "/admin/viewcab";
	}

	@GetMapping("/viewgoodsvehicle")
	public String viewGoodsVehicle(Model model) {
		List<Goods_Vehicle> goodsvehiclelist = service.showGoodsVechile();
		model.addAttribute("goodsvehiclelist", goodsvehiclelist);
		return "/admin/viewgoodsvehicle";
	}

	@GetMapping("/goodsvehicle")
	public String setGoodsVehicle(Model model) {
		return "admin/goodsVehicle_details";
	}

	@PostMapping("/goodsvehicle")
	public String addGoodsVehicle(@ModelAttribute("goodsvehicle") Goods_Vehicle goodsvehicle, Model model) {
		service.addGoodsVehicle(goodsvehicle);
		model.addAttribute("message", Messages.GOODS_MESSAGE);
		return "/admin/goodsVehicle_details";
	}

	@GetMapping("/compose_admin")
	public String compose(Model model) {
		return "admin/compose_admin";
	}

	@GetMapping("/viewbookedcabs")
	public String viewBookedCabs(Model model) {
		List<Cab_Booking> bookedcablist = service.showBookedCab();
		model.addAttribute("bookedcablist", bookedcablist);
		return "/admin/viewbookedcabs";
	}

	@GetMapping("/viewbookedgoodsvehicle")
	public String viewBookedGoods(Model model) {
		List<GoodsVehicle_Booking> bookedgoodslist = service.showBookedGoods();
		model.addAttribute("bookedgoodslist", bookedgoodslist);
		return "/admin/viewbookedgoodsvehicle";
	}

	@GetMapping("/confirmcabbooking")
	public String confirmBookCabs(Model model, @RequestParam("bkid") int bkid, @RequestParam("regno") String regno) {
		// System.out.println("in confirm booking");
		// System.out.println(bkid);
		service.showPendingCabRequest(bkid, regno);
		// model.addAttribute("message", Messages.CABSTATUSAPPROVED_MESSAGE);
		return "/admin/viewbookedcabs";
	}

	@GetMapping("/confirmgoodsbooking")
	public String confirmBookGoods(Model model, @RequestParam("bkid") int bkid, @RequestParam("regno") String regno) {
		service.showPendingGoodsRequest(bkid, regno);
		// model.addAttribute("message", Messages.CABSTATUSAPPROVED_MESSAGE);
		return "/admin/viewbookedgoodsvehicle";
	}

	@GetMapping("/viewconfirmcabs")
	public String viewConfirmCabs(Model model) {
		List<Cab_Booking> confirmcablist = service.showConfirmCab();
		model.addAttribute("confirmcablist", confirmcablist);
		return "/admin/viewconfirmcabs";
	}

	@GetMapping("/viewconfirmgoodsvehicle")
	public String viewconfirmgoodsvehicle(Model model) {
		List<GoodsVehicle_Booking> confirmgoodslist = service.showConfirmGoods();
		model.addAttribute("confirmgoodslist", confirmgoodslist);
		return "/admin/viewconfirmgoodsvehicle";
	}

	@GetMapping("/ridebooking")
	public String rideBooking(Model model, @RequestParam("bkdate") String bkdate, @RequestParam("regno") String regno) {
		model.addAttribute("regno", regno);
		model.addAttribute("bkdate", bkdate);
		return "/admin/ridebooking";
	}

	@GetMapping("/goodsridebooking")
	public String goodsrideBooking(Model model, @RequestParam("bkdate") String bkdate,
			@RequestParam("regno") String regno) {
		model.addAttribute("regno", regno);
		model.addAttribute("bkdate", bkdate);
		return "/admin/goodsridebooking";
	}

	@PostMapping("/startride")
	public String startride(Model model, @ModelAttribute("startride") Cab_Booking cab_Booking) {
		Cab_Booking cb = service.startride(cab_Booking.getRegistrationno(), cab_Booking.getBooking_date());
		model.addAttribute("cabrideKey", cb);
		model.addAttribute("rn", cab_Booking.getRegistrationno());
		model.addAttribute("d", cab_Booking.getBooking_date());
		List<Employee> driverlist = service.viewDriver();
		// System.out.println(driverlist);
		model.addAttribute("driverlist", driverlist);
		return "admin/startride";
	}

	@PostMapping("/startgoodsride")
	public String startgoodsride(Model model,
			@ModelAttribute("startgoodsride") GoodsVehicle_Booking goodsVehicle_Booking) {
		GoodsVehicle_Booking gb = service.startgoodsride(goodsVehicle_Booking.getRegistrationno(),
				goodsVehicle_Booking.getBooking_date());
		model.addAttribute("goodrideKey", gb);
		model.addAttribute("rn", goodsVehicle_Booking.getRegistrationno());
		model.addAttribute("d", goodsVehicle_Booking.getBooking_date());
		List<Employee> driverlist = service.viewDriver();
		model.addAttribute("driverlist", driverlist);
		return "admin/startgoodsride";
	}

	@PostMapping("/ridestarted")
	public String rideStarted(@ModelAttribute("ridestarted") RideDetails rideDetails, Model model) {
		rideDetails.setStatus("in progress");
		rideDetails.setEndKM("null");
		service.addRide(rideDetails);
		return "/admin/startride";
	}

	@PostMapping("/goodsridestarted")
	public String goodsrideStarted(@ModelAttribute("goodsridestarted") GoodsRideDetails goodsRideDetails, Model model) {
		goodsRideDetails.setStatus("in progress");
		goodsRideDetails.setEndKM("null");
		service.addGoodsRide(goodsRideDetails);
		return "/admin/startgoodsride";
	}

	@GetMapping("/viewprogresscabs")
	public String viewProgressCabs(Model model) {
		List<RideDetails> progresscablist = service.showProgressCab();
		model.addAttribute("progresscablist", progresscablist);
		return "/admin/viewprogresscabs";
	}

	@GetMapping("/viewprogressgoods")
	public String viewProgressGoods(Model model) {
		List<GoodsRideDetails> progressgoodslist = service.showProgressGoods();
		model.addAttribute("progressgoodslist", progressgoodslist);
		return "/admin/viewprogressgoods";
	}

	@PostMapping("/EndRide")
	String endRide(@ModelAttribute("ridedetails") RideDetails ridedetails,
			@ModelAttribute("cab_Booking") Cab_Booking cab_Booking, Model model) {

		RideDetails ride_details = service.EndCabRide(ridedetails);

		double endKm = Double.parseDouble(ride_details.getEndKM());
		double startKm = Double.parseDouble(ride_details.getStartKM());
		// System.out.println(ride_details.getStartKM());
		
		Cab cab = ride_details.getCab();
		double fair_perKm = Double.parseDouble(cab.getFair());

		double distanceTarvelled = endKm - startKm;
		double totalFair = distanceTarvelled * fair_perKm;

		// System.out.println(totalFair);
		model.addAttribute("totalFair", totalFair);
		model.addAttribute("dtravel", distanceTarvelled);
		model.addAttribute("fair", fair_perKm);

		service.UpdateCabBooking(cab_Booking);
		// System.out.println("in end");
		// System.out.println(ridedetails.getEndKM());
		// System.out.println(ridedetails.getRegistrationno());
		// System.out.println(ridedetails.getBooking_date());

		return "admin/cabpayment";
	}

	@PostMapping("/EndGoodsRide")
	String endGoodsRide(@ModelAttribute("goodsridestarted") GoodsRideDetails goodsRideDetails,
			@ModelAttribute("goodsVehicle_Booking") GoodsVehicle_Booking goodsVehicle_Booking, Model model) {

		GoodsRideDetails goods_RideDetails = service.EndGoodsRide(goodsRideDetails);

		double endKm = Double.parseDouble(goods_RideDetails.getEndKM());
		double startKm = Double.parseDouble(goods_RideDetails.getStartKM());
		Goods_Vehicle goods_Vehicle = goods_RideDetails.getGoods_Vehicle();
		double fair_perKm = Double.parseDouble(goods_Vehicle.getFair());
		double distanceTarvelled = endKm - startKm;
		double totalFair = distanceTarvelled * fair_perKm;
		model.addAttribute("totalFair", totalFair);
		model.addAttribute("dtravel", distanceTarvelled);
		model.addAttribute("fair", fair_perKm);
		service.UpdateGoodsBooking(goodsVehicle_Booking);
		return "admin/goodspayment";
	}

	@GetMapping("/cabpayment")
	public String cabpayment(Model model) {
		return "/admin/cabpayment";
	}
	
	@GetMapping("/goodspayment")
	public String goodspayment(Model model) {
		return "/admin/goodspayment";
	}

	@GetMapping("/trackcabs")
	String trackcabRide(Model model) {
		List<RideDetails> trackcablist = service.TrackCabRide();
		/*
		 * System.out.println("in track cab"); System.out.println(trackcablist);
		 * for(RideDetails rd:trackcablist) { Cab c=rd.getCab();
		 * System.out.println(c.getTp_deviceno());
		 * 
		 * 
		 * }
		 */
		model.addAttribute("trackcablist", trackcablist);
		return "admin/viewtrackcabs";
	}
	
	@GetMapping("/trackgoods")
	String trackgoodsRide(Model model) {
		List<GoodsRideDetails> trackgoodslist = service.TrackGoodsRide();
		System.out.println(trackgoodslist);
		model.addAttribute("trackgoodslist", trackgoodslist);
		return "admin/viewtrackgoods";
	}

	@GetMapping("/Livetrack")
	public String track(Model model) {
		return "/admin/Livetrack";
	}

	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("title", "Admin | Trasnportation Buddy");
	}
}
