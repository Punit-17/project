var arr=[];
var selectedSeats=[];
var idx=0;

function selectedButton(elem) {
  elem.classList.toggle("highlight");
}

function validate(){
var arr=document.getElementsByClassName("highlight")
  for(var i=0;i<arr.length;i++){
     selectedSeats[idx]=arr[i].id;
     idx++; 
  }
  console.log(selectedSeats);
}

