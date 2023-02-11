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
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
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
																					  width:23%;
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
																						  width:23%;
																						  opacity: 0.9;
																						  font-size:30px;
																						  color:deeppink;"> 				
				Search Flight</button>
				
				<button type="button" onclick="location.href='bookflight.jsp'"  style=" background-color: transparent;
																				  color: black;
																				  padding: 14px 20px;
																				  margin: 8px 0;
																				  border: none;
																				  cursor: pointer;
																				  width:23%;
																				  opacity: 0.9;
																				  font-size:30px;
																				  color:deeppink;">
				Book a Flight</button>
				
				<button type="button" onclick="location.href='Signin.jsp'" style=" background-color: transparent;
																				  color: black;
																				  padding: 14px 20px;
																				  margin: 8px 0;
																				  border: none;
																				  cursor: pointer;
																				  width:23%;
																				  opacity: 0.9;
																				  font-size:30px;
																				  color:deeppink;">
			
				Logout</button>
					
				<br><br><br><br> 
				<div class="content" style="margin-top:1px;">
  
						<form action="flightbooked.jsp" method="post" style="border:1px solid #ccc">
					  <div class="container">
					    <div class="row">
  <div class="col-75">
    <div class="container">
      <form action="flightbooked.jsp" style="margin-top:1px;">

         <div class="row">
    <!--     <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
      </div>     -->    

          <div class="col-50" style="margin-top:0.5px;">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="name on card">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="expmonth">

            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="exp year">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="cvv">
              </div>
            </div>
          </div>

        </div>
        <label>
        </label>
        <input type="submit" value="Continue to book a ticket" class="btn">
      </form>
    </div>
  </div>

 
</div>
					    
                        </div>
                 </form>

          </div>

			
 </body>
</html>



