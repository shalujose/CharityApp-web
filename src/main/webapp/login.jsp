<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.btn-primary {
    color: #fff;
    background-color: #0275d8;
    border-color: #0275d8;
    
    </style>
<link rel="stylesheet" href="css/bootsrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script>
function login(){
	alert("Login successfully completed");
	window.location.href = "donorFeatures.jsp";
}
</script>
</head>
<body style="text-align:center">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br>
<h2>Please sign in</h2>
<br>
<form>

<input type="text" placeholder="Email address" required><br><br>
<input type="password" placeholder="password" required><br>
<br>
<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>

</form>
</body>
</html>
