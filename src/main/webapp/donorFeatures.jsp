
<%@page import="com.revature.charityapp.Model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor Home</title>
<link rel="stylesheet" href="css/bootsrap.min.css">
<script type="js/bootstrap.min.js"></script>
</head>
<body style="text-align:center">
<jsp:include page="header1.jsp"></jsp:include>


<br><br><br><br>
<h2 style="color:purple"><b>CHARITY IS</b> WILLINGLY GIVEN <b>FROM HEART</b></h2>
<br><br>
<a href="viewRequest">View Fund Request</a><br>
<a href="sendDonation.jsp">Donate Now</a><br>
<!-- <a href="viewTransaction.jsp">View Donations</a><br>-->
<a href="index.jsp">Logout</a><br>

<!-- <script >
function displayName(){
    var user =JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
    var name= user.id;
    document.getElementById("name").innerHTML = "Welcome....."+ name;
    return name;
}
displayName();
</script>
 -->
</body>
</html>