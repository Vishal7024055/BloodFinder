
<%
String succMsg=(String)session.getAttribute("succMsg");
if(succMsg!=null){
	
	

	
	%>
	<%@include file="allcss.jsp" %>
 <div class="sucmsg" style="font-weight: bold;
    margin-left: 32px;
    padding-top: 3%;
    padding-bottom: 3%;
    font-size: 19px;
    color: green;">
  <h5><%=succMsg %></h5>
 
 </div>
	
	
	
	<%
	session.removeAttribute("succMsg");
}


%>