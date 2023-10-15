
<%
String suc=(String)session.getAttribute("suc");
if(suc!=null){
	
	
	%>
	<%@include file="allcss.jsp" %>
 <div class="sucmsg" style="font-weight: bold;
    margin-left: 80px;
    padding-top: 3%;
    padding-bottom: 3%;
    font-size: 19px;
    color: green;">
  <h5><%=suc %></h5>
 
 </div>
	
	
	
	<%
	session.removeAttribute("suc");
}


%>