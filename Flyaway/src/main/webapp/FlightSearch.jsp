<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import ="model.Flight,model.FlightDAOImpl,java.text.*,java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
  background-image: url('dal-lake-kashmir-india_1232-4713.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
   background-size: cover;
  
}
marquee{
font-size:50px;
}
button {
  background-color: transparent;
  color: black;
  padding: 12px 15px;
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

table{
 border: 2px solid black;
border-collapse: collapse;
  width: 50%;
  

}
th, td {

  font-size:20px;
  padding: 10px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}
  

tr:nth-child(even) {background-color: #f2f2f2;}
tr:hover {background-color: coral;}
table.center {
  margin-left: 300px; 
  margin-right: 150px;
  margin-top:150px;
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
				 
				
				<button type="button" onclick="location.href='index.jsp'">Home</button>
				<button type="button" onclick="location.href='searchflight.jsp'">Search Flight</button>
				<button type="button" onclick="location.href='bookflight.jsp'">Book a Flight</button>
				<button type="button" onclick="location.href='Signin.jsp'">Login</button>
				
					
				<br><br><br><br>          
				



<%!  
String Source =null,Destination=null;
java.util.Date schdate=null;

%>

<%
     
     DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
      DateFormat formatter1 = new SimpleDateFormat("dd/MM/yyyy");
        Source = request.getParameter("src");	
        Destination=request.getParameter("des");
        java.util.Date schdate=null;
        
       java.sql.Date sqlschDate=null;

try {
	 schdate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
    sqlschDate = new java.sql.Date(schdate.getTime());
	
      } catch (ParseException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
    }


 Flight f1=new Flight(Source,Destination,sqlschDate);
 FlightDAOImpl flightDAOImpl= new FlightDAOImpl();
 FlightDAOImpl.initDataBase();
 List f=flightDAOImpl.SearchFlight(f1);
 Iterator i=f.iterator();
 
 %>
   
 
 
<h1 style="margin-top:20px; text-align:center; ">
		Flights From <%out.print(Source);%> to <%out.print(Destination); %> on <%out.print(sqlschDate); %> </h1>


<TABLE class='center' BORDER="1" style="margin-top:2px; margin-left:350px;">
 <TR>
      <TH>Flight Number </TH>
      <TH>Departure Time</TH>
      <TH>Duration in hours</TH>
      <TH>Arrival Time</TH>
      <TH>Price in Rs</TH>
      
      </TR>
      
      <tr>
       <td>1009</td>
       <td>21:50</td>
       
       <td>2H30min</td>
       <td>21:40</td>
       <td>13050</td>
      
      </tr>
      <% 
	while(i.hasNext())
	{
		 %>
		<tr>
        <% Flight f2=(Flight)i.next();%>
		<td><% out.print(f2.getFly_Num()) ;%></td>
	    <td><% out.print(f2.getDeparture_time()); %></td>
	     <td><% out.print(f2.getDuration()); %></td>
	      <td><% out.print(f2.getArrival_time()); %></td>
	      <td><% out.print(f2.getPrice()); %></td>
	     
	    <td><form action="Passenger.jsp">
        <input type="hidden" name="flynum" value="<%=f2.getFly_Num()%>" />
        <input type="submit" value="Book">
</form></td>
	    </tr><%
	    
	}
%>
</TABLE>
<br><br>
 
<button type="button" onclick="location.href='index.html'" style="position: absolute;
  bottom:20px;">Back to Previous Page</button>

</body>
</html>