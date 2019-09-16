<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
<script>
function register(name,gender,age,email,phone,password){
	//alert("Registration successfully completed");
	var formData = "name=" +name +"$gender=" + gender +"&age=" +age+"&email"+email "&phone_number="+ phone +"&password="+ password;
	window.location.href = "login.jsp";
}
</script>
<link rel="stylesheet" href="css/bootsrap.min.css">
<script type="js/bootstrap.min.js"></script>
</head>
<body style="text-align:center">

<jsp:include page="header.jsp"></jsp:include>
<br><br><br>
<h2>Register Now</h2>
<form action="RegisterServlet">
<br><br>
Name <input type="text" name="name" placeholder="Enter your name " required><br><br>
Gender <input type="radio" value="M" name="gender" required>Male
<input type="radio" value="F" name="gender" required>Female <br><br>
Age <input type="number" min=18 max=80 name="age" required><br><br>
Email <input type="email" name="email" required><br><br>
Phone <input type="number" name="phone" required><br><br>
Password<input type="password" name="password" placeholder="Please set your password" required><br><br>
<input type = "submit" value = "Submit" class="btn btn-success">
<input type = "reset" value = "Reset" class="btn btn-success" onclick="window.location.href = 'register.jsp';">

</form>

</body>
</html>