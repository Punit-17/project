package com.deloitte.itcinema.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.stereotype.Repository;

import com.deloitte.itcinema.model.Admin;
import com.deloitte.itcinema.model.Movie;
import com.deloitte.itcinema.model.User;

@Repository
public class MovieDAO {
	public Connection connectionToDB() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			con=DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","system","admin"); 

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public ArrayList<Movie> getAllMovies() {
		Connection con = connectionToDB();
		String sql = "select * from movie";
		Statement st;
		ArrayList<Movie> movies = new ArrayList<Movie>();
		try {
			st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				Movie movie  = new Movie();
				movie.setMovieId(rs.getInt(1));
				movie.setMovieName(rs.getString(2));
				movie.setMovieRating(rs.getString(3));
				movie.setAvailableSeats(rs.getString(6));
				movie.setPosterURL(rs.getString(5));
				movies.add(movie);
				
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return movies;
	}

	public String getSeats(int movieId) {
		// TODO Auto-generated method stub
		Connection con = connectionToDB();
		String sql = "select availableseats from movie where movieid = "+movieId;
		Statement st;
		try {
			st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				String seats=rs.getString(1);
				seats = seats.substring(1, seats.length()-1);
				String[] seatsArr = seats.split(",");
				return Arrays.toString(seatsArr);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<User> getInvoice() {
		// TODO Auto-generated method stub
		return null;
	}

	public Admin getAdminData() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean postMovie(Movie movie) {
		// TODO Auto-generated method stub
		Connection con = connectionToDB();
		try {
//		String sql = "insert into movie(movieid,moviename,movierating,totalseats,availableseats,posterurl) values"
//				+ "(?,'?','?',?,?,'?')";
//		
//		PreparedStatement st = con.prepareStatement(sql);
//		
//		st.setInt(1, movie.getMovieId());
//		st.setString(2, movie.getMovieName());
//		st.setString(3,movie.getMovieRating());
//		st.setInt(4, movie.getTotalSeats());
//		st.setInt(5, movie.getAvailableSeats());
//		st.setString(6, movie.getPosterURL());
//		String avail = Movie.arrToString(movie.getAvailableSeats());
//		System.out.println(avail);
		String sql = "insert into movie values"
				+ "("+movie.getMovieId()+",'"+movie.getMovieName()+"','"
						+ movie.getMovieRating()+"',"+Movie.getTotalSeats()+",'"+movie.getPosterURL()+"','"+movie.getAvailableSeats()+"')"; 
//		System.out.println(movie.getAvailableSeats());
		
		Statement st = con.createStatement();
		st.executeUpdate(sql);
		con.commit();
		con.close();
		return true;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
		
	}

	public void postAdminData(Admin admin) {
		// TODO Auto-generated method stub
		
	}

	public User postUserData(User user) {
		// TODO Auto-generated method stub
		Connection con = connectionToDB();
		
		try {
		String sql = "insert into movieuser values"
				+ "("+user.getUserMobile()+",'"+user.getUserEmail()+"','"
						+ user.getMovieBooked()+"',"+user.getBookingDate()+",'"+user.getSeatsBooked()+"')"; 
//		System.out.println(movie.getAvailableSeats());
		alterSeats(user.getSeatsBooked(),user.getMovieBooked());
		Statement st = con.createStatement();
		st.executeUpdate(sql);
		con.commit();
		con.close();
		return user;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}
	}
	private String getAllSeats(String moviename) {
		try {
			String sql = "select availableseats from movie where moviename='"+moviename+"'";
//			System.out.println(sql);
			Connection con = connectionToDB();
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(sql);

			if (rs.next()) {
				return rs.getString(1);
			}
			con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	private void alterSeats(String seatsBooked,String moviename) {
		// TODO Auto-generated method stub
		
		String seats = getAllSeats(moviename);
		seatsBooked = seatsBooked.substring(1, seatsBooked.length()-1);
		seatsBooked = seatsBooked.replaceAll(" ", "");
		String[] seatsArr = seatsBooked.split(",");
		System.out.println(seatsBooked);
		for(String str:seatsArr) {
			System.out.println(str);
			seats = seats.replace(str+",","");
		}
		
		
		try {
			String sql = "update movie set availableseats='"+ seats+"' where moviename ='"+moviename+"'";
			System.out.println(sql);
			Connection con = connectionToDB();
			Statement st = con.createStatement();

			st.executeUpdate(sql);

			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean getAuth(String username, String password) {
		// TODO Auto-generated method stub
		try {
			String sql = "select * from movieadmin where adminemail = '"+username+"' and adminpassword = '"+password+"'";
			System.out.println(sql);
			Connection con = connectionToDB();
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(sql);

			if (rs.next()) {
				return true;
			}
			con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public String getMovie(int movieId) {
		// TODO Auto-generated method stub
		Connection con = connectionToDB();
		PreparedStatement st;
		try {
			st = con.prepareStatement("select moviename from movie where movieid = ? ");
			st.setInt(1, movieId);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				return rs.getString(1);
			}else {
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

	public boolean delMovie(int movieId) {
		// TODO Auto-generated method stub
Connection con = connectionToDB();
		
		try {
		String sql = "delete from movie where movieid="+movieId; 
//		System.out.println(movie.getAvailableSeats());
		Statement st = con.createStatement();
		st.executeUpdate(sql);
		con.commit();
		con.close();
		return true;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	}

//	public boolean authAdmin(Admin admin) {
//		// TODO Auto-generated method stub
//		return false;
//	}

}
