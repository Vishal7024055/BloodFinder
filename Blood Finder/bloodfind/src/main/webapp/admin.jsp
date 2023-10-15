<%@page import="org.hibernate.Query"%>
<%@page import="com.hibernate.UtillforDoner"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.hibernate.Fatchdata"%>
<%@page import="com.hibernate.DeleteDonorPost"%>
<%@page import="com.pojo.*"%>

<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.fullbody {
	background-image: url("allcontent/admin.jpg");
	background-repeat: no-repeat;
	width: 100%;
	background-size: cover;
	overflow-x: hidden;
	 background-size: cover;
    background-attachment: fixed;
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
</style>

<meta charset="UTF-8">
<%@include file="allcontent/bootstrap.jsp"%>
<%@include file="allcontent/allcss.jsp"%>

<title>All Blood Group</title>
</head>
<body class="fullbody">
	<nav>
		<a href="index.jsp"> <img src="allcontent/pngwing.png">
		</a>

		<ul>
			<li><a href=index.jsp>Home</a></li>
			<li><a href=home.jsp>Urgent</a></li>
			<li><a href=#>Contect Us</a></li>
			<li><a href=#>About Us</a>
			<li>
		</ul>
	</nav>
	<%-- <c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>

</c:if> --%>

	<div class="container-view">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Blood Group</h5>



				<% 
			Session s = Fatchdata.getFactory().openSession();
				Query q=s.createQuery("from doner");
				List<doner> list=q.list();
				for(doner doner:list){
				
				
				%>
						<br>
						<br>
				<div class="card mt-2" id="cardco">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fa fa-clipboard fa-2x"></i>
						</div>
						<h6 style="font-family: 'Kanit', sans-serif;">Name: <%=doner.getName() %></h6><br>
						<h6 style="font-family: 'Kanit', sans-serif;">Email: <%=doner.getEmail() %></h6><br>
						
						<h6 style="font-family: 'Kanit', sans-serif;">Mobile No: <%=doner.getMobile() %><h6>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="City: <%=doner.getCity() %>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="State : <%=doner.getState() %>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="Blood Group : <%=doner.getBgrp() %>" readonly>
							</div>
						</div>
						<h6>Date Of Birth : <%=doner.getDob() %></h6>
						<div class="text-center">
							<a href="contectus_admin.jsp?id=<%=doner.getId() %>" class="btn btn-sm bg-success text-white">Contect Us</a>
							 <a href="DeleteServlet?id=<%=doner.getId() %>" class="btn btn-sm bg-danger text-white">
								Delete</a>
						</div>
					</div>

				</div>

<%                   }
				s.close(); %>

			</div>
		</div>
	</div>

</body>
</html>
