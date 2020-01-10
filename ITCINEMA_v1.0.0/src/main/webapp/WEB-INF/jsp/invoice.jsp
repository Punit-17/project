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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
<style>
.section {
	position: relative;
	height: 100vh;
}

.section .section-center {
	position: absolute;
	top: 50%;
	left: 0;
	right: 0;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
}

#booking {
	font-family: 'Montserrat', sans-serif;
	background-image: url('https://wallpaperplay.com/walls/full/9/9/0/140050.jpg');
	background-size: cover;
	background-position: center;
}

#booking::before {
	content: '';
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
	background: rgba(0, 0, 0, 0.6);
}

.booking-form {

	margin: auto;
}
.bform{
	max-width: 642px;
	width: 100%;
}
.bform2{
	max-width: 1142px;
	width: 100%;
}

.booking-form .form-header {
	text-align: center;
	margin-bottom: 25px;
}

.booking-form .form-header h1 {
	font-size: 58px;
	text-transform: uppercase;
	font-weight: 700;
	color: #ffc001;
	margin: 0px;
}

.booking-form>form {
	background-color: #101113;
	padding: 30px 20px;
	border-radius: 3px;
}

.booking-form .form-group {
	position: relative;
	margin-bottom: 15px;
}

.booking-form .form-control {
	background-color: #f5f5f5;
	border: none;
	height: 45px;
	border-radius: 3px;
	-webkit-box-shadow: none;
	box-shadow: none;
	font-weight: 400;
	color: #101113;
}

.booking-form .form-control::-webkit-input-placeholder {
	color: rgba(16, 17, 19, 0.3);
}

.booking-form .form-control:-ms-input-placeholder {
	color: rgba(16, 17, 19, 0.3);
}

.booking-form .form-control::placeholder {
	color: rgba(16, 17, 19, 0.3);
}

.booking-form input[type="date"].form-control:invalid {
	color: rgba(16, 17, 19, 0.3);
}

.booking-form select.form-control {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.booking-form select.form-control+.select-arrow {
	position: absolute;
	right: 0px;
	bottom: 6px;
	width: 32px;
	line-height: 32px;
	height: 32px;
	text-align: center;
	pointer-events: none;
	color: #101113;
	font-size: 14px;
}

.booking-form select.form-control+.select-arrow:after {
	content: '\279C';
	display: block;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}

.booking-form .form-label {
	color: #fff;
	font-size: 12px;
	font-weight: 400;
	margin-bottom: 5px;
	display: block;
	text-transform: uppercase;
}

.booking-form .submit-btn {
	color: #101113;
	background-color: #ffc001;
	font-weight: 700;
	height: 50px;
	border: none;
	width: 100%;
	display: block;
	border-radius: 3px;
	text-transform: uppercase;
}
.ty{
	color:#ffc001;
}
.tw{
	color: #fff;
}
.tk{
	color:#fff;
}
</style>
</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form bform">
						<div class="form-header">
							<h1>IT CINEMA</h1>
						</div>
						<form action="/bookingstatus">
							<div class="row ">
								<div class="col-sm-12">
									<div class="form-group ">
										<h2 class="text-center tk">Invoice</h2>
									</div>
								</div>
						</div>
							<div class="row ">
								<div class="col-sm-6">
									<div class="form-group ">
										<h2 class="text-right ty">Email</h2>
									</div>
								</div>
							
							<div class="form-group col-sm-6">
								<h2 class="tw">${user.getUserEmail()}</h2>
								</div>
						</div>

						<div class="row ">
							<div class="col-sm-6">
								<div class="form-group ">
									<h2 class="text-right ty">Mobile</h2>
								</div>
							</div>
						
						<div class="form-group col-sm-6">
							<h2 class="tw">${user.getUserMobile()}</h2>
							</div>
					</div>

					<div class="row ">
						<div class="col-sm-6">
							<div class="form-group ">
								<h2 class="text-right ty">Movie Name</h2>
							</div>
						</div>
					
					<div class="form-group col-sm-6">
						<h2 class="tw">${user.getMovieBooked()}</h2>
						</div>
				</div>

				<div class="row ">
					<div class="col-sm-6">
						<div class="form-group ">
							<h2 class="text-right ty">Date</h2>
						</div>
					</div>
				
				<div class="form-group col-sm-6">
					<h2 class="tw">${user.getBookingDate()}</h2>
					</div>
			</div>

			<div class="row ">
				<div class="col-sm-6">
					<div class="form-group ">
						<h2 class="text-right ty">Seats Booked</h2>
					</div>
				</div>
			
			<div class="form-group col-sm-6">
				<h2 class="tw">${user.getSeatsBooked()}</h2>
				</div>
		</div>

		<div class="row ">
			<div class="col-sm-6">
				<div class="form-group ">
					<h2 class="text-right ty">Total Price</h2>
				</div>
			</div>
		
		<div class="form-group col-sm-6">
			<h2 class="tw">Rs.${price}</h2>
			</div>
	</div>
						<div class="row">
							<div class="col-sm-6"><b id="emailErr"></b></div>
							<div class="col-sm-6"><b id="mobileErr"></b></div>
						</div>
							<div class="form-btn">
								<input type="submit" class="submit-btn" value="Continue">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function valid(){
			console.log(val)
			var email = ValidateEmail()
			var mob = ValidateMobile()

			return(email && mob)
		}
		function ValidateEmail() 
		{
			console.log(em)
			var mail = document.getElementById('email').value;
			
			if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.match(mail))
			{
				console.log(hello)
				document.getElementById('emailErr').innerHTML = ""
				return (true)
			}else{
				document.getElementById('emailErr').innerHTML = "Enter Valid Email Id"
				return (false)
			}
		}
		function ValidateMobile(){
			console.log(mob)
			var mob = document.getElementById('mobile').value;
			if (/^[6-9]{1}[0-9]{9}$/.match(mail))
			{
				document.getElementById('mobileErr').innerHTML = ""
				return (true)
			}else{
				document.getElementById('mobileErr').innerHTML = "Enter Valid Mobile Number"
				return (false)
			}
		}
	</script>
</body>

</html>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${user.getUserMobile()}
	${user.getUserEmail()}
	${user.getBookingDate()}
	${user.getMovieBooked()}
	${user.getSeatsBooked()}
</body>
</html>
 -->