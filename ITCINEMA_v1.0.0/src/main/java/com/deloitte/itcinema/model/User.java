package com.deloitte.itcinema.model;

import java.util.ArrayList;
import java.util.Arrays;

public class User {
	private String userMobile;
	private String userEmail;
	private String movieBooked;
	private String bookingDate;
	private String seatsBooked;
	
	public String getUserMobile() {
		return userMobile;
	}
	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getMovieBooked() {
		return movieBooked;
	}
	public void setMovieBooked(String movieBooked) {
		this.movieBooked = movieBooked;
	}
	public String getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}
	public String getSeatsBooked() {
		return seatsBooked;
	}
	public void setSeatsBooked(String seatsBooked) {
		this.seatsBooked = seatsBooked;
	}
//	@Override
	public String getOb() {
		return "User [userMobile=" + userMobile + ", userEmail=" + userEmail + ", movieBooked=" + movieBooked
				+ ", bookingDate=" + bookingDate + ", seatsBooked=" + seatsBooked + "]";
	}
}
