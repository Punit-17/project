<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />


</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form bform2">
						<div class="form-header">
							<h1>IT CINEMA</h1>
						</div>
						<div class="row">
						<c:forEach items="${movies}" var="item">
							<div class="col-md-4">
								<div class="card hover">
									<div class="card-img" style="background-image:url(${item.getPosterURL()});">
									</div>
									<div class="card-content">
										<a href="#!">
											<a href="/seatselection/${item.getMovieId()}"><h1>${item.getMovieName()}</h1></a>
											<h2>IMDB Rating  <b>${item.getMovieRating()}</b></h2>
										</a>
									</div>
								</div>
							</div>
							</c:forEach>
					</div>			
				</div>
			</div>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
