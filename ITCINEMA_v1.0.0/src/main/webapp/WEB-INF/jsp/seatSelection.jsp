<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Seats</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <style>
        .highlight{
            background-color:#40E0D0;
        }
        .dis{
            background-color:gray;
        }
         .btn{
  border-radius: 15px;
  border: 2px solid #73AD21;
  
  padding-bottom: 25px;
  width: 40px;
  height: 20px;
  position:relative;
}

        </style>

</head>
<body>

<script
        src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous">

</script>
        <br>
        <center><font>All eyes this way please!</font></center>
           <hr style="height: 5px; background-color: gray; width:35%; " align="center"><br><br><br>
           
           <form action="/form/${movieId}/" method="get" onsubmit="return validOrNot()">
           <input type="text" name="seatBooked" value="" id="seatSel" style="display:none;">
           <input type="text" value="${seats}" id="seatAvail" style="display:none;">
        <div class="row"  >
            <div class="col-2">
            </div>
            <div class="col-1"> <font>A</font>&nbsp;</div>
            <div class="col-1"> </div>
            <div class="col-5">
                <input type="button" name="seat" id="A1" class="btn" value="1" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="A2" class="btn" value="2" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="A3" class="btn" value="3" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="A4" class="btn" value="4" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="A5" class="btn" value="5" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="A6" class="btn" value="6" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="A7" class="btn" value="7" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="A8" class="btn" value="8" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="A9" class="btn" value="9" onclick="selectedButton(this)" disabled>
                
            </div>
           
            <div class="col-2">
                
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-2">
             
               
            </div>
            <div class="col-1"> <font>B</font>&nbsp;</div>
            <div class="col-1"> </div>
            <div class="col-5">
                <input type="button" name="seat" id="B1" class="btn" value="1" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="B2" class="btn" value="2" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="B3" class="btn" value="3" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="B4" class="btn" value="4" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="B5" class="btn" value="5" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="B6" class="btn" value="6" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="B7" class="btn" value="7" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="B8" class="btn" value="8" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="B9" class="btn" value="9" onclick="selectedButton(this)" disabled>
               
                
            </div>
           
            <div class="col-2">
              
            </div>
        </div>
    <br>
   <center> <font>EXECUTIVE-Rs. 400.00</font></center>
    <hr>

        <div class="row">
            <div class="col-2">
               
               
            </div>
            <div class="col-1"> <font>C</font>&nbsp;</div>
            <div class="col-1"> </div>
            <div class="col-5">
                <input type="button" name="seat" id="C1" class="btn" value="1" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="C2" class="btn" value="2" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="C3" class="btn" value="3" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="C4" class="btn" value="4" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="C5" class="btn" value="5" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="C6" class="btn" value="6" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="C7" class="btn" value="7" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="C8" class="btn" value="8" onclick="selectedButton(this)" disabled>
                <input type="button" name="seat" id="C9" class="btn" value="9" onclick="selectedButton(this)" disabled>
               
                
            </div>
          
            <div class="col-2">
                             
            </div>
        </div>

    <br>
        <div class="row">
            <div class="col-2"> </div>
            <div class="col-1"><font>D</font>&nbsp;</div>
            <div class="col-1"></div>
            <div class="col-5">
                <input type="button" id="D1" class="btn" value="1" onclick="selectedButton(this)" disabled>
                <input type="button" id="D2" class="btn" value="2" onclick="selectedButton(this)" disabled>
                <input type="button" id="D3" class="btn" value="3" onclick="selectedButton(this)" disabled>
                <input type="button" id="D4" class="btn" value="4" onclick="selectedButton(this)" disabled>
                <input type="button" id="D5" class="btn" value="5" onclick="selectedButton(this)" disabled>
                <input type="button" id="D6" class="btn" value="6" onclick="selectedButton(this)" disabled>
                <input type="button" id="D7" class="btn" value="7" onclick="selectedButton(this)" disabled>
                <input type="button" id="D8" class="btn" value="8" onclick="selectedButton(this)" disabled>
                <input type="button" id="D9" class="btn" value="9" onclick="selectedButton(this)" disabled>
                
                
            </div>
            
            <div class="col-2"></div>
        </div>

    <br>
       
    <br>
    <center><font>PLATINUM-Rs. 420.00</font></center>
    <hr>

        <div class="row">
        <div class="col-2"></div>
        <div class="col-1"><font>E</font>&nbsp;</div>
        <div class="col-1"> </div>
            <div class="col-6">
                <input type="button" id="E1" class="btn"  value="1" onclick="selectedButton(this)" disabled>
                <input type="button" id="E2" class="btn" value="2" onclick="selectedButton(this)" disabled>
                <input type="button" id="E3" class="btn" value="3" onclick="selectedButton(this)" disabled>
                <input type="button" id="E4" class="btn" value="4" onclick="selectedButton(this)" disabled>
                <input type="button" id="E5" class="btn" value="5" onclick="selectedButton(this)" disabled>
                <input type="button" id="E6" class="btn" value="6" onclick="selectedButton(this)" disabled>
                <input type="button" id="E7" class="btn" value="7" onclick="selectedButton(this)" disabled>
                <input type="button" id="E8" class="btn" value="8" onclick="selectedButton(this)" disabled>
                <input type="button" id="E9" class="btn" value="9" onclick="selectedButton(this)" disabled>
                  
            </div>
            <div class="col-1"></div>
            <div class="col-2"></div>
        </div>
    <br>
    <center><font>VIP-RS. 550.00</font></center>
    <hr>
    <br><br>
   <center><input class=" btn-lg btn-success" type="submit" id="Proceed" onclick="validate()" name="" value="Proceed""></center><br><br>
    </form>
    <div class="row">
    <div class="col-md-12" style="background-color: dodgerblue; height: 80px;">
        <h6 style="line-height: 80px;">copyright @ IT CINEMA</h6>
    </div>
    </div>
<script type="text/javascript">
var arr=[];
var selectedSeats=[];
var idx=0;
var valid = false;

$( document ).ready(function() {
	var seats = document.getElementById('seatAvail').value;
	
	seats = seats.substring(1, seats.length-1).replace(/\s/g,'');
	//console.log(seats)
	var seatsArr = seats.split(",");
	seatsArr.forEach(myFunction);

	function myFunction(item) {
		console.log(item)
		document.getElementById(item).removeAttribute("disabled");
		//document.getElementById(item).ClassList.remove("dis")
	}
});

function validOrNot(){
	return valid;
}

function selectedButton(elem) {
  elem.classList.toggle("highlight");
}

function validate(){
var arr=document.getElementsByClassName("highlight")
if(arr.length==0) {
	alert("please select a seat") 
	return;
}

  for(var i=0;i<arr.length;i++){
     selectedSeats[idx]=arr[i].id;
     idx++;
  }
  document.getElementById('seatSel').value = selectedSeats.toString().replace(/,/g,"x");
	valid = true;
  return true;
}
</script>

</body>
</html>