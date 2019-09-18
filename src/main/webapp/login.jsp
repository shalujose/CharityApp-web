<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootsrap.min.css">
<script type="js/bootstrap.min.js"></script>
<style>
.btn-primary {
    color: #fff;
    background-color: #0275d8;
    border-color: #0275d8;
    display: inline-block;
    padding: 3px 30px;
  font-size: 18px;
  margin: 2px 2px;
  cursor: pointer;
    </style>

<script src="js/jquery-3.4.1.min.js"></script>
</head>
<body style="text-align:center">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br>
<h2>Please sign in</h2>
<br>

<form onsubmit="login()">

<input type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter valid Emailid" placeholder="Email address" required autofocus><br><br>
<input type="password" name="password" id="password" placeholder="password" required><br>
<br>
<input type = "submit" value = "Sign in" class="btn-primary"/>

</form>
<br><a href="register.jsp">New User?</a>
<script>
        function login() {
            //alert('register');
            event.preventDefault();
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var formData = "email=" + email + "&password=" + password;
            console.log(formData);
            //alert(formData);
            var url = "http://localhost:8080/CharityApp/LoginServlet?" + formData;
            console.log(url);
            
            var formData = {};
            $.get(url, function(response) {
                console.log(response);
                console.log(response.errorMessage);
                //localStorage.setItem("LOGGED_IN_USER",JSON.Stringify(response));
                var msg=JSON.parse(response);
                //alert(msg);
                
                if (msg.errorMessage!=null) {
                    alert("Invalid Username/Password");
                } else {
                    alert("Successfully loged in");
                    window.location.href = "donorFeatures.jsp";
                }
            });
        }
    </script>
</body>

</html>
