<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>

<link rel="stylesheet" href="css/bootsrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>
<body style="text-align:center">

<jsp:include page="header.jsp"></jsp:include>
<br><br><br>

<h2>Register Now</h2>
<div>
<form action="RegisterServlet">
<br><br>

Name <input type="text" name="name" id="name" placeholder="Enter your name" required autofocus><br><br>
Gender <input type="radio" value="M" name="gender" id="gender" required>Male
<input type="radio" value="F" name="gender" required>Female <br><br>
Age <input type="number" min=18 max=80 name="age" required><br><br>
Email <input type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br><br>
Phone <input type="number" name="phone" required><br><br>
Password <input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Please set your password" required><br><br>
<input type = "submit" value = "Submit" class="btn btn-success" />
&nbsp;&nbsp;<input type = "reset" value = "Reset" class="btn btn-success" onclick="window.location.href = 'register.jsp';"/>

</form>
</div>
<script type="text/javascript">

function register()
{
	event.preventDefault();
	var name = document.getElementById("name").value;
	var phone_number=document.getElementById("phone_number").value;
	var password=document.getElementById("password").value;
	
	var formData = "name=" +name + "&phone_number="+ phone_number +"&password="+ password;
    var url = "http://localhost:8080/WaterCaneWebProject/RegServlet?" + formData;
    console.log(url);
    $.get(url, function(response){
    console.log(response);
    var data= JSON.parse(response);
    
    if ( data.errorMessage != null) {
    	alert(data.errorMessage);
    }
    else
    	{
    	alert(data.message);
    	alert("successfully registered");
    	window.location.href= "ulogin.jsp";
    	}
       
    });
}
</script>

</body>
</html>