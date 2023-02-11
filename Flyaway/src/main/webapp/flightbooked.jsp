					
						
						
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

<meta charset="ISO-8859-1">
<title> Welcome to DreamFly Airline</title>

<body >
				<marquee >Welcome to FlyAway</marquee>
				 <div class="bird-container bird-container--one">
					      <div class="bird bird--one"></div>
					    </div>
				<br>
				 
				
				<button type="button" onclick="location.href='index.jsp'">Home</button>
				<button type="button" onclick="location.href='searchflight.jsp'">Search Flight</button>
				<button type="button" onclick="location.href='bookflight.jsp'">Book a Flight</button>
				
				<button type="button" onclick="location.href='Signin.jsp'">Logout</button>
					
				<br><br><br><br>          
				
				<h2 >Flight ticket booked successfully</h2>
					<button type="button" onclick="'FlightSearch.jsp'">Go to Home Page</button>
						
	

</body>
</html>




