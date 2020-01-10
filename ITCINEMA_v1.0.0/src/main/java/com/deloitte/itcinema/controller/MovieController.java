package com.deloitte.itcinema.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.deloitte.itcinema.model.*;
import com.deloitte.itcinema.services.MovieServices;

@Controller
@ResponseBody
public class MovieController {
	
	@Autowired
	MovieServices service;
	@GetMapping("/")
	public ModelAndView getAllMovies(){
		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.setViewName("index");
//		modelAndView.addObject("allMovies","Welcome");
//		return modelAndView;
		//service.getAllMovies()
		
		modelAndView.setViewName("index");
		modelAndView.addObject("movies",service.getAllMovies());
		return modelAndView;
	}
	
	@PostMapping(value="/addmovie")
	public ModelAndView postMovie(Movie movie) {
		boolean status = service.postMovie(movie);
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("updatemoviestatus");
		modelAndView.addObject("status","Added.");
		return modelAndView;
	}
	
	@GetMapping(value="/delmovie")
	public ModelAndView delMovie(@RequestParam("movieId") int movieId) {
		boolean status = service.delMovie(movieId);
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("updatemoviestatus");
		modelAndView.addObject("status","Deleted.");
		return modelAndView;
	}
	
	@GetMapping("/seatselection/{movieId}")
	public ModelAndView getSeats(@PathVariable("movieId")int movieId){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("seatSelection");
		modelAndView.addObject("movieId",movieId);
		modelAndView.addObject("seats",service.getSeats(movieId));
		return modelAndView;
	}
	
	@GetMapping("/form/{movieId}/")
	public ModelAndView formData(@PathVariable int movieId,@RequestParam String seatBooked) {
		DateFormat df = new SimpleDateFormat("dd/MM/yy");
		Date dateobj = new Date();
		ModelAndView modelAndView = new ModelAndView();
		String str = Arrays.toString(seatBooked.split("x"));
		modelAndView.setViewName("userData");
		modelAndView.addObject("movieBooked",service.getMovie(movieId));
		modelAndView.addObject("seatSelected", str);
		modelAndView.addObject("currDate",df.format(dateobj));
		return modelAndView;
	}
	
	@PostMapping("/invoice")
	public ModelAndView postUserData(User user) {
		System.out.println(user.getOb());
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("invoice");
		modelAndView.addObject("user",service.postUserData(user));
		double price = 0.0;
		String[] seats = user.getSeatsBooked().substring(1,user.getSeatsBooked().length()-1).replaceAll("\\s", "").split(",");
		for(String s : seats) {
			if(s.charAt(0)=='A' ||s.charAt(0)=='B') {
				price += 400.0;
			}else if(s.charAt(0)=='C' ||s.charAt(0)=='D') {
				price += 420.0;
			}else if(s.charAt(0)=='E') {
				price += 550.0;
			}
		}
		modelAndView.addObject("price",price);
		return modelAndView;
	}
	@RequestMapping("/bookingstatus")
	public ModelAndView bookingStatus()
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("bookingstatus");
		return modelAndView;
	}
//	@GetMapping("/invoice")
//	public ArrayList<User> getInvoice() {
//		return service.getInvoice();
//	}
	
	
	
//	@PostMapping("/adminsignup")
//	public void postAdminData(@RequestBody Admin admin) {
//		service.postAdminData(admin);
//	}
//	@PostMapping("/adminlogin")
//	public ModelAndView getAdminData(Admin admin){
//		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.setViewName("adminlogin");
//		modelAndView.addObject("user",service.authAdmin(admin));
//		
//		return modelAndView;
//	}

	@GetMapping("/adminlogin")
	public ModelAndView loginForm() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}
	@PostMapping("/adminauth")
	public ModelAndView adminAuth(Admin admin) {
		ModelAndView modelAndView = new ModelAndView();
		boolean status = service.getAuth(admin.getAdminEmail(),admin.getAdminPass());
//		System.out.println(status);
		if(status) {
			modelAndView.setViewName("updatemovie");
		}else {
			modelAndView.setViewName("login");
			modelAndView.addObject("auth","Invalid Admin");
		}
		
		return modelAndView;
	}
	
	
}
