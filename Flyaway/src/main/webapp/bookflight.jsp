<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
button {
  background-color: transparent;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width:23%;
  opacity: 0.9;
  font-size:30px;
  color:deeppink;
}

button:hover {
  opacity:1;
  
  
}
body {
  background-image: url('dal-lake-kashmir-india_1232-4713.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
   background-size: cover;
  
}
marquee{
font-size:50px;
}
input[type="text"],input[type="submit"],input[type="Date"],select
{
    font-size:20px;
}
label{
 font-size:24px;
 color: deeppink;
}


.bird-container {
  position: absolute;
  top: 0.5%;
  left: -7.5vw;
  -webkit-transform: scale(0);
  transform: scale(0);
  will-change: transform;
  -webkit-animation-name: fly-right-one;
  animation-name: fly-right-one;
  -webkit-animation-timing-function: linear;
  animation-timing-function: linear;
  -webkit-animation-iteration-count: infinite;
  animation-iteration-count: infinite;
}


.bird-container2 {
  position: absolute;
  bottom: 25%;
  left: -7.5vw;
  -webkit-transform: scale(0);
  transform: scale(0);
  will-change: transform;
  -webkit-animation-name: fly-right-one;
  animation-name: fly-right-one;
  -webkit-animation-timing-function: linear;
  animation-timing-function: linear;
  -webkit-animation-iteration-count: infinite;
  animation-iteration-count: infinite;
}


.bird {
  background-image: url("http://www.iamramraj.com/demo/Flying_birds_CSS_animation_examples/bird-cells.svg");
  background-size: auto 100%;
  width: 100px;
  height: 125px;
  will-change: background-position;
  animation-name: fly-cycle;
  animation-timing-function: steps(10);
  animation-iteration-count: infinite;
  animation-duration: 1s;
  animation-delay: -0.5s;
}

.bird--one {
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-delay: -0.5s;
  animation-delay: -0.5s;
}

@keyframes fly-cycle {
  100% {
    background-position: -900px 0;
  }
}
.bird-container--one {
  -webkit-animation-duration: 15s;
  animation-duration: 15s;
  -webkit-animation-delay: 0;
  animation-delay: 0;
}

@keyframes fly-right-one {
  0% {
    left: -10%;
    -webkit-transform: scale(0.3);
    transform: scale(0.3);
  }
  10% {
    left: 10%;
    -webkit-transform: translateY(2vh) scale(0.4);
    transform: translateY(2vh) scale(0.4);
  }
  20% {
    left: 30%;
    -webkit-transform: translateY(0vh) scale(0.5);
    transform: translateY(0vh) scale(0.5);
  }
  30% {
    left: 50%;
    -webkit-transform: translateY(4vh) scale(0.6);
    transform: translateY(4vh) scale(0.6);
  }
  40% {
    left: 70%;
    -webkit-transform: translateY(2vh) scale(0.6);
    transform: translateY(2vh) scale(0.6);
  }
  50% {
    left: 90%;
    -webkit-transform: translateY(0vh) scale(0.6);
    transform: translateY(0vh) scale(0.6);
  }
  60% {
    left: 110%;
    -webkit-transform: translateY(0vh) scale(0.6);
    transform: translateY(0vh) scale(0.6);
  }
  100% {
    left: 110%;
    opacity: 1;
    -webkit-transform: translateY(0vh) scale(0.6);
    transform: translateY(0vh) scale(0.6);
  }
}



</style>




<meta charset="UTF-8">
<title>Book your flight</title>
</head>
<body>

   <marquee >Welcome to FlyAway</marquee>
				 <div class="bird-container bird-container--one">
					      <div class="bird bird--one"></div>
					    </div>
				<br>
				 
				
				<button type="button" onclick="location.href='index.jsp'">Home</button>
				<button type="button" onclick="location.href='searchflight.jsp'">Search Flight</button>
				<button type="button" onclick="location.href='bookflight.jsp'">Book a Flight</button>
				<button type="button" onclick="location.href='Signin.jsp'">Login</button>
					
				<br><br><br><br>          
				
				<div>
				
				<form action="signin.jsp" style="text-align:center; text-color: deeppink;">
					
					
						<label>Start from</label>&nbsp;&nbsp;
					    <select name="src" id="src" placeholder="enter book price" >
					      <option value="Hyderabad">Hyderabad</option>
				          <option value="Vijayawada">Vijayawada</option>
				          <option value="Chennai">Chennai</option>
				          <option value="Delhi">Delhi</option>
				          <option value="Mumbai">Mumbai</option>
				          <option value="Bangulore">Bangulore</option>
				       </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label>Destination</label>&nbsp;&nbsp;
						<select name="des" id="des" style="">
						
					    <option value="Vijayawada">Vijayawada</option>
				          <option value="Bengulore">Bangulore</option>
				          <option value="Chennai">Chennai</option>
				          <option value="Delhi">Delhi</option>
				          <option value="Mumbai">Mumbai</option>
				          <option value="Hyderabad">Hyderabad</option>		
				
				</select><br><br><br>
					
						<label>Date</label>
						<input type=Date name="date" placeholder="enter book price"> <br><br><br>
						
						
						
						<label>Email</label> 
					<input type="email" name="email"/><br><br>
					<label>mobile Number</label> 
					<input type="mobilenumber" name="mobilenumber"/><br><br>
					
					<input type="submit" value="login to Book a Flight">
					</form>
					
					<div class="bird-container2 bird-container--two">
					      <div class="bird bird--one"></div>
					   </div>
				</div>

</body>
</html>