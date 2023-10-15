<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.redio{
justify-content: center;
  display: flex;
  padding-right: 29%;
  margin-bottom: 5px;
  color: white;
}
#huey{
margin-left: -52%;
  width: 13%;
}
}


</style>
<meta charset="UTF-8">
<title>Register</title>
<%@include file="allcontent/allcss.jsp" %>
</head>
<body>

		<nav>
			<a href="index.jsp"> <img src="allcontent/pngwing.png" > </a>

			<ul>
				<li><a href=index.jsp>Home</a></li>
				<li><a href=home.jsp>Show All</a></li>
				<li><a href=contectus.jsp>Contect Us</a></li>
				<li><a href=Aboutus.jsp>About Us</a>
				<li>
			</ul>
		</nav>

<div class="backimg">
	<img alt="" src="allcontent/loginimg.png">
</div>
    <div class="login">
        <h1 >Register Donor</h1>
        	<%@include file="allcontent/msg.jsp" %>
          <form action="home" method="post">
            <input type="text" name="fname" placeholder="Full Name*" required="required" />
             <input type="text" name="email" placeholder="Email" required="required" />
              <input type="text" name="num" placeholder="Mobile No.*" required="required" />
            <input type="date" id="dob"  placeholder="Date Of Birth"  name="dob">
              
              <select name="bloodgrp" class="custom-select">
                <option selected > Select Blood Group*</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
              </select>

              <select name="selectstate" class="custom-select">
              <option selected > Select State</option>
              <option value="Uttar Pradesh">Uttar Pradesh</option>
              <option value="Delhi">Delhi</option>
              <option value="Uttrakhand">Uttrakhand</option>
              <option value="Madhya Pradesh">Madhya Pradesh</option>
              <option value="Bihar">Bihar</option>
              <option value="Jammu & Kasmeer">Jammu & Kasmeer</option>
            </select>

              <input type="text" name="city" placeholder="City" required="required" /><br>
              
              <p style="margin-bottom: 3%; color: white;">Have you ever tested positive for HIV? *</p>
               <div class="redio">
               
    <input type="radio" id="huey" name="redio" value="No" />
    <label for="huey">No</label>
    <input type="radio" id="huey" name="redio" value="Yes" />
    <label for="huey">Yes</label><br>
       </div>

              <button type="submit" class="btn btn-primary btn-block btn-large">Register And Save Details</button>
          </form>
          
      </div>
</body>
</html>