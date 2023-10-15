<%@page import="org.hibernate.Query"%>
<%@page import="com.hibernate.UtillforDoner"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.hibernate.Fatchdata"%>
<%@page import="com.pojo.*"%>
<%@ page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login </title>
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

    <div class="login2">
        <h1>Search Donor</h1>
          	<%@include file="allcontent/msgforlogin.jsp" %>
         
		
          <form action="moreview.jsp" method="post">
          

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

				
					 
			


            <button type="submit" class="btn btn-primary btn-block btn-large">Search</button>
            
          </form>
      </div>

</body>
</html>