# Flyaway

 FlyAway Flight Booking System 
By
Sruthisree
This document contains sections for: 
Description of the project 
Core concepts used in project
Flow of the Application.


<img width="1407" alt="Flowchart" src="https://user-images.githubusercontent.com/116260282/218263427-43bba0d5-e93a-4a9e-bdd4-f7cfea493d5f.png">




Demonstrating the product capabilities, appearance, and user interactions.

			Description of the project

As a Full Stack Developer, design and develop an airline booking portal named as FlyAway. Use the GitHub repository to manage the project artifacts. 
 
Background of the problem statement:
FlyAway is a ticket-booking portal that lets people book flights on their website.
 The website needs to have the following features:
● A search form in the homepage to allow entry of travel details, like the date of travel, source, destination, and the number of persons. ● Based on the travel details entered, it will show the available flights with their ticket prices. ● Once a person selects a flight to book, they will be taken to a register page where they must fill in their personal details. In the next page, they are shown the flight details of the flight that they are booking, and the payment is done via a dummy payment gateway. On completion of the payment, they are shown a confirmation page with the details of the booking.     


The administrator can:
● An admin login page where the admin can change the password after login, if he wishes
● A master list of places for source and destination
● A master list of airlines
● A list of flights where each flight has a source, destination, airline, and ticket price
     
The goal of the company is to deliver a high-end quality product as early as possible. 
 

Core concepts used in the Project
● Eclipse/IntelliJ: An IDE to code for the application  ● Java: A programming language to develop the web pages, databases, and others ● SQL: To create tables for admin, airlines, and other specifics ● Maven: To create a web-enabled Maven project ● Git: To connect and push files from the local system to GitHub  ● GitHub: To store the application code and track its versions  ● Scrum: An efficient agile framework to deliver the product incrementally  ● Search and Sort techniques: Data structures used for the project  ● Specification document: Any open-source document or Google Docs 
 

Entity list:
Flight
Passenger
Paymentinfo
User


Flight Entity



package model;
import java.sql.Date;

import java.sql.Time;

import javax.persistence.*;
@Entity
public class Flight 
{
	public Flight() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Id
	private String fly_Num;
	private String source;
	private String destination;
	private Time arrival_time;
	private Time departure_time;
	private Date schedule;
	private int seats;
	private int duration;
	private double price;
	public Flight(String fly_Num, String source, String destination, Time arrival_time, Time departure_time,
			Date schedule, int seats, int duration, double price) {
		super();
		this.fly_Num = fly_Num;
		this.source = source;
		this.destination = destination;
		this.arrival_time = arrival_time;
		this.departure_time = departure_time;
		this.schedule = schedule;
		this.seats = seats;
		this.duration = duration;
		this.price = price;
	}
	public Flight(String Source,String Destination,Date sqlschDate)
	{
		source=Source;
		destination=Destination;
		schedule=sqlschDate;
	}
	
	
	
	public String getFly_Num() {
		return fly_Num;
	}
	public void setFly_Num(String fly_Num) {
		this.fly_Num = fly_Num;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Time getArrival_time() {
		return arrival_time;
	}
	public void setArrival_time(Time arrival_time) {
		this.arrival_time = arrival_time;
	}
	public Time getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(Time departure_time) {
		this.departure_time = departure_time;
	}
	public Date getSchedule() {
		return schedule;
	}
	public void setSchedule(Date schedule) {
		this.schedule = schedule;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Flight [fly_Num=" + fly_Num + ", source=" + source + ", destination=" + destination + ", arrival_time="
				+ arrival_time + ", departure_time=" + departure_time + ", schedule=" + schedule + ", seats=" + seats
				+ ", duration=" + duration + ", price=" + price + ", getFly_Num()=" + getFly_Num() + ", getSource()="
				+ getSource() + ", getDestination()=" + getDestination() + ", getArrival_time()=" + getArrival_time()
				+ ", getDeparture_time()=" + getDeparture_time() + ", getSchedule()=" + getSchedule() + ", getSeats()="
				+ getSeats() + ", getDuration()=" + getDuration() + ", getPrice()=" + getPrice() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}	
	
}



Passenger Entity
package model;
import java.sql.Date;

import java.sql.Time;

import javax.persistence.*;
@Entity

public class Passenger 
{
	@id
	private String flightNumber;
	private String firstName;
	private String lastName;
	private long mobileNumber;
	private int noOfPerson;
	private String address;
	public Passenger(String flightNumber, String firstName, String lastName, long mobileNumber, int noOfPerson,String address) 
	{
		
		this.flightNumber = flightNumber;
		this.firstName = firstName;
		this.lastName = lastName;
		this.mobileNumber = mobileNumber;
		this.noOfPerson = noOfPerson;
		this.address = address;
	}
	
	
	public String getFlightNumber() {
		return flightNumber;
	}
	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public int getNoOfPerson() {
		return noOfPerson;
	}
	public void setNoOfPerson(int noOfPerson) {
		this.noOfPerson = noOfPerson;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
Database

Schemas for Database

1.
CREATE TABLE `Airline_Booking`.`Flight` (
  `fly_Num` VARCHAR(10) NOT NULL,
  `source` VARCHAR(45) NULL,
  `destination` VARCHAR(45) NULL,
  `arrival_time` TIME NULL,
  `departure_time` TIME NULL,
  `schedule` DATE NULL,
  `seats` INT NULL,
  `duration` INT NULL,
  `price` DOUBLE NULL,
  PRIMARY KEY (`fly_Num`));

2.
CREATE TABLE `Airline_Booking`.`Passenger` (
  `flightNumber` VARCHAR(10) NOT NULL,
  `firstName` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NULL,
  `mobileNumber` MEDIUMTEXT NULL,
  `noOfPerson` INT NULL,
  `address` VARCHAR(45) NULL,
  PRIMARY KEY (`flightNumber`));

3.
CREATE TABLE `Airline_Booking`.`PaymentInfo` (
  `userId` INT NOT NULL,
  `cardNumber` VARCHAR(45) NULL,
  `cardHolderName` VARCHAR(45) NULL,
  `cvv` VARCHAR(45) NULL,
  `month` VARCHAR(45) NULL,
  `year` VARCHAR(45) NULL,
  `paidDate` DATE NULL,
  `paidAmount` DOUBLE NULL,
  PRIMARY KEY (`userId`));

4.
CREATE TABLE `Airline_Booking`.`User` (
  `id` INT NOT NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
5.
INSERT INTO `Airline_Booking`.`User` (`id`, `username`) VALUES ('1', 'admin');


6
INSERT INTO `Airline_Booking`.`Flight` (`fly_Num`, `source`, `destination`, `arrival_time`, `departure_time`, `schedule`, `seats`, `duration`, `price`) VALUES ('1001', 'vijayawada', 'hyderabad', '12:10', '12:20', '10/02/2023', '4,5', '2Hr30Min', '12,000');
INSERT INTO `Airline_Booking`.`Flight` (`fly_Num`, `source`, `destination`, `arrival_time`, `departure_time`, `schedule`, `seats`, `duration`, `price`) VALUES ('1004', 'Hyderabad', 'Delhi', '14:25', '14:35', '12/02/2023', '12,13,14', '3Hr40Min', '14500');
INSERT INTO `Airline_Booking`.`Flight` (`fly_Num`, `source`, `destination`, `arrival_time`, `departure_time`, `schedule`, `seats`, `duration`) VALUES ('1204', 'mumbai', 'Hyderabad', '22:15', '22:30', '11/02/2023', '23', '2Hr30Min');



Payment Entity

package model;
import java.sql.Date;

import java.sql.Time;

import javax.persistence.*;

@Entity
public class PaymentInfo 
{
	@Id
	private int userId;
	private String cardNumber;
	private String cardHolderName;
	private String cvv;
	private String month;
	private String year;
	private Date paidDate;
	private double paidAmount;
	
	public PaymentInfo(int userId, String cardNumber, String cardHolderName, String cvv, String month, String year,
			Date paidDate, double paidAmount) {
		super();
		this.userId = userId;
		this.cardNumber = cardNumber;
		this.cardHolderName = cardHolderName;
		this.cvv = cvv;
		this.month = month;
		this.year = year;
		this.paidDate = paidDate;
		this.paidAmount = paidAmount;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getCardHolderName() {
		return cardHolderName;
	}

	public void setCardHolderName(String cardHolderName) {
		this.cardHolderName = cardHolderName;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public Date getPaidDate() {
		return paidDate;
	}

	public void setPaidDate(Date paidDate) {
		this.paidDate = paidDate;
	}

	public double getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}
	
	
}




User or AdminEntity

package model;


import javax.persistence.*;
@Entity

public class User {
        @id
	private int id;
	private String username;
	private String password;

	public User() {

	}

	public User(int id, String username, String password) {
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + "]";
	}

}

FlowChart of the project




	
							Hibernate configuration file

package org.simplilearn.lms.config;
 
import java.util.Properties;

import javax.security.auth.Subject;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.simplilearn.main.model.Flight;
import org.simplilearn.main.model.Passenger;
import org.simplilearn.main.model,PaymentInfo;
import org.simplilearn.main.model.User;
 

public class HibConfig {
	
	public static SessionFactory getSessionFactory() {
		Configuration configuration = new Configuration();
		Properties properties=new Properties();
		properties.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
		properties.put(Environment.URL, "jdbc:mysql://localhost:3306/AdminDb");
		properties.put(Environment.USER,"root");
		properties.put(Environment.PASS,"Sruthi@1990");
		properties.put(Environment.HBM2DDL_AUTO,"update");
		properties.put(Environment.SHOW_SQL,true);
		properties.put(Environment.FORMAT_SQL,true);
		configuration.setProperties(properties);
		configuration.addAnnotatedClass(Flight.class);
		configuration.addAnnotatedClass(Passenger.class);
		configuration.addAnnotatedClass(PaymentInfo.class);
	           configuration.addAnnotatedClass(User.class);
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		return sessionFactory;
		
	}

}
							Sample SCREEBSHOTS
Home page

Admin or User Login
Admin Adding Flight info
User adding and payment page

Some sample code


AdminFlightServlet.java


import java.io.IOException;
import java.sql.Time;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Flight;
import model.FlightDAOImpl;
import java.text.DateFormat;
import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/AdminFlightServlet")
public class AdminFlightServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 
		DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
		DateFormat dateFormat = new SimpleDateFormat("hh:mm:ss");
		DateFormat formatter1 = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat format = new SimpleDateFormat("HH:mm");
		//DateFormat formatter = new SimpleDateFormat("HH:mm");
		Date arrtime = null,deptime = null;
		String flyNo=null,Src=null,Dest=null;
		
	try {
			
           
		java.util.Date schdate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("schdate"));
	    java.sql.Date sqlschDate = new java.sql.Date(schdate.getTime());
		
        java.util.Date depTime =(java.util.Date)format.parse(request.getParameter("deptime"));

	    java.sql.Time sqlDepTime = new java.sql.Time(depTime.getTime());
	    
	    java.util.Date arrTime =(java.util.Date)format.parse(request.getParameter("arrtime"));

	    java.sql.Time sqlArrTime = new java.sql.Time(arrTime.getTime());
		
           System.out.println("Departure time:"+  request.getParameter("deptime"));
           System.out.println("After change deptime"+deptime);
		       
		    
		        System.out.println("javadate"+schdate);
		        System.out.println("sch sqldate"+sqlschDate);
		        System.out.println("sqlDeptime :"+depTime);
		        int seats=Integer.parseInt(request.getParameter("seats"));
			       int duration=Integer.parseInt(request.getParameter("duration"));
				   double price=Double.parseDouble(request.getParameter("price"));
				
				
				Flight flight=new Flight(request.getParameter("flyno"),request.getParameter("src"),request.getParameter("dest"),sqlArrTime,sqlDepTime,sqlschDate,seats,duration,price);
				 FlightDAOImpl flightDAOImpl= new FlightDAOImpl();
				 FlightDAOImpl.initDataBase();
				flightDAOImpl.addFlight(flight);      
		        
		        
		        
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  	
	}
}
SigninServlet




import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserDAOImpl;

@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username= request.getParameter("username");
		String password=request.getParameter("password");
		if(username.equals("Admin") && password.equals("Admin"))
		{
			out.println("<h2>Sign In Successfull !</h2>");
			RequestDispatcher rd = request.getRequestDispatcher("AdminWelcome.jsp");
			rd.forward(request, response);
			
			
		}
		else
		{
		User user = new User(0,username,password);
		
		UserDAOImpl userDAOImpl = new UserDAOImpl();
		
		UserDAOImpl.initDataBase();
		boolean res = userDAOImpl.signin(user);
		
		if(res) {
			out.println("<h2>Sign In Successfull !</h2>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		
		else {
			out.println("<h2>Credentials did not match please try one more time</h2>");
			RequestDispatcher rd = request.getRequestDispatcher("SignInFront.jsp");
			rd.include(request, response);
		}
		}

	}

}



SignupServlet



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserDAOImpl;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		User user = new User(0, request.getParameter("username"), request.getParameter("password"));

		UserDAOImpl userDAOImpl = new UserDAOImpl();

		UserDAOImpl.initDataBase();
		boolean res = userDAOImpl.signup(user);

		if (res) {
			out.println("<h2>Sign Up Successfull !</h2>");
			RequestDispatcher rd = request.getRequestDispatcher("SignIn.jsp");
			rd.forward(request, response);
			response.sendRedirect("SignInFront.jsp?success=1");
		}

		else {
			out.println("<h2>There was some error, please try again</h2>");
			RequestDispatcher rd = request.getRequestDispatcher("signup.html");
			rd.include(request, response);
		}

	}

}
