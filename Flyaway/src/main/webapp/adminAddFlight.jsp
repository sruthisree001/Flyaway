<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

body {
  background-image: url('dal-lake-kashmir-india_1232-4713.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
   background-size: cover;
  
}
marquee{
font-size:50px;
}
 body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 80%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  height:20px;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
   
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  text-align:center;
  padding: 16px;
  background-color:lightgreen;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
.content {
  max-width: 500px;
 margin-left: 500px; 
  margin-right: 150px;
  margin-top:100px;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<marquee >Welcome to FlyAway</marquee>
				 <div class="bird-container bird-container--one">
					      <div class="bird bird--one"></div>
					    </div>
				<br>
				 
				
				<button type="button" onclick="location.href='index.jsp'" style=" background-color: transparent;
																					  color: black;
																					  padding: 14px 20px;
																					  margin: 8px 0;
																					  border: none;
																					  cursor: pointer;
																					  width:32%;
																					  opacity: 0.9;
																					  font-size:30px;
																					  color:deeppink;">
				Home</button>
				<button type="button" onclick="location.href='searchflight.jsp'"  style=" background-color: transparent;
																							  color: black;
																						  padding: 14px 20px;
																						  margin: 8px 0;
																						  border: none;
																						  cursor: pointer;
																						  width:32%;
																						  opacity: 0.9;
																						  font-size:30px;
																						  color:deeppink;"> 				
				Search Flight</button>
				<button type="button" onclick="location.href='Signin.jsp'" style=" background-color: transparent;
																				  color: black;
																				  padding: 14px 20px;
																				  margin: 8px 0;
																				  border: none;
																				  cursor: pointer;
																				  width:32%;
																				  opacity: 0.9;
																				  font-size:30px;
																				  color:deeppink;">
			
				Logout</button>
					
				<br><br><br><br> 
				<div class="content" style="margin-top:-40px;">
  
						<form action="addFlightDB.jsp"  style="border:1px solid #ccc;height:100px; margin-top:0.1px;">
	 <div class="container">
	 <h2>Add Flight information</h2>
	 <hr>
	 	
					<label>Flight Number</label> 
					<input type="text" name="flyno"/><br>
					
					<label>Source</label> 
					<input type="text" name="src"/><br>
					
					<label>Destination</label> 
					<input type="text" name="dest"/><br>
					
					<label> Seats</label> 
					<input type="text" name="seats"  /><br>
		
					<label>Duration</label> 
					<input type="text" name="duration"  /><br>
					
					<label>Price</label> 
					<input type="text" name="price"  /><br>
					
					<label>Arrival Time</label> 
					<input type="time" name="arrtime"/><br>
					
					<label>Departure Time</label> 
					<input type="time" name="deptime"/><br>
					
					<label> scheduled Date</label> 
					<input type="date" name="schdate"><br><br>
					
		
		
		
		<input type="submit" name="operation" value="Submit" style=""/>
		</div>
	</form>

          </div>

			
 </body>
</html>




