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
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
	    background-color: aliceblue;
	    font-family: 'Kanit', sans-serif;
}

tr:nth-child(even) {
	background-color: #dddddd;
}



.fullbody {
	background-image: url("allcontent/back.jpg");
	background-repeat: no-repeat;
	width: 100%;
	overflow-x: hidden;
}

.col-md-12 {
	margin-top: 3%;
	color: white;
}

#cardco {
	background-color: #092756;
}

.fullbody nav ul li {
	margin-top: 22px
}

.fullbody nav ul li a {
	text-decoration: none;
}
#myInput{
width: 30%;
    margin-left: 70%;
    margin-bottom: 5px;
    background-color: #ffffffc4;
    color: black;
    padding: 8px;
    border: 1px solid black;
    border-radius: 25px;
    display: flex;
}




</style>
<%@include file="allcontent/allcss.jsp" %>
<%@include file="allcontent/bootstrap.jsp" %>
</head>
<body class="fullbody" >


<nav style="display: flex">
		<a href="index.jsp"> <img src="allcontent/pngwing.png">
		</a>

		<ul>
			<li><a href=index.jsp>Home</a></li>
			<li><a href=home.jsp>Show All</a></li>
			<li><a href=contectus.jsp>Contect Us</a></li>
			<li><a href=Aboutus.jsp>About Us</a>
			<li>
		</ul>
	</nav>

	<h4  style="font-weight: bold;" class="text-center text-primary">All Blood Doner</h4>
	<input type="text" name="" id="myInput" placeholder="Search By City"
		onkeyup="searchFun()">


	<table id="myTable">
		<tr>
			<th>Name:</th>
			<th>Mobile Number:</th>
			<th>City:</th>
			<th>State:</th>
			<th>Blood Group:</th>
		</tr>
		<% 
			Session s = Fatchdata.getFactory().openSession();
				Query q=s.createQuery("from doner");
				List<doner> list=q.list();
				for(doner doner:list){
				
				
				%>
		
		<tr>
			<td><%=doner.getName() %></td>
			<td><%=doner.getMobile() %></td>
			<td><%=doner.getCity() %></td>
			<td><%=doner.getState() %></td>
			<td><%=doner.getBgrp() %></td>
		</tr>
		
		<%} %>
	</table>

</body>
<script>
	const searchFun =()=>{
		let filter = document.getElementById('myInput').value.toUpperCase();
		let myTable=document.getElementById('myTable')
		let tr= myTable.getElementsByTagName('tr');
		for(let i= 0; i<=tr.length; i++){
			let td=tr[i].getElementsByTagName('td')[2]
			if(td){
				let textvalue=td.textContent || td.innerHTML;
				if(textvalue.toUpperCase().lastIndexOf(filter) > -1){
					tr[i].style.display= "";
				}
				else{
					tr[i].style.display= "none";
				}
			}
		}
			
		}
	
	
	</script>
</html>

