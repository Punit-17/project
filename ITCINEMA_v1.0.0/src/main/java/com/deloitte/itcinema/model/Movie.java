//String[] arr = availableSeats.substring(1,availableSeats.length()-1).split(",");

package com.deloitte.itcinema.model;

import java.util.ArrayList;

public class Movie {
	private int movieId;
	private String movieName;
	private String movieRating;
	private String availableSeats="[A1,A2,A3,A4,A5,A6,A7,A8,A9,"
			+ "B1,B2,B3,B4,B5,B6,B7,B8,B9,"
			+ "C1,C2,C3,C4,C5,C6,C7,C8,C9,"
			+ "D1,D2,D3,D4,D5,D6,D7,D8,D9,"
			+ "E1,E2,E3,E4,E5,E6,E7,E8,E9,]";
	private static int totalSeats = 70;
	private String posterURL;
	
	public Movie() {
	}
	
//	@Override
//	public String toString() {
//		return "Movie [movieId=" + movieId + ", movieName=" + movieName + ", movieRating=" + movieRating
//				+ ", availableSeats=" + availableSeats + ", totalSeats=" + totalSeats + ", posterURL=" + posterURL
//				+ "]";
//	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMovieRating() {
		return movieRating;
	}
	public void setMovieRating(String movieRating) {
		this.movieRating = movieRating;
	}
	public String getAvailableSeats() {
		return availableSeats;
	}
	public void setAvailableSeats(String availableSeats) {
		this.availableSeats = availableSeats;
	}
	public static int getTotalSeats() {
		return totalSeats;
	}
	public String getPosterURL() {
		return posterURL;
	}
	public void setPosterURL(String posterURL) {
		this.posterURL = posterURL;
	}
	
}
