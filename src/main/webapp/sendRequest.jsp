<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Donation Request</title>
<link rel="stylesheet" href="css/bootsrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>

<style>
.button {
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  background-color: #008CBA;
}
</style>
</head>
<body style="text-align:center">
<jsp:include page="header2.jsp"></jsp:include>

<h3> Add Donations</h3>
<script>
function addRequest(){
    event.preventDefault();
    var category_Id  = document.getElementById("category_Id").value;
    var amount = document.getElementById("amount").value;
    var formData = "category_Id=" + category_Id + "&amount="+ amount;
    console.log(formData);
    var url="http://localhost:8080/CharityApp/DonateFundServlet?"+formData;
    	console.log(url);
    var formData = {};
    $.get(url, function(response){
            console.log(response);
            var msg = JSON.parse(response);
            if (msg.errorMessage!=null) {
                alert("Invalid request");
            } else {
                alert("Your request successfully completed");
                window.location.href = "adminFeatures.jsp";
            }
            
    });
  }
</script>
<br><br><br>
<form onsubmit="addRequest()">

<label>&nbsp;CategoryId: &nbsp;</label>
<input type="number" min="1" max="10" name="category_Id" id="category_Id" required autofocus />
<br/>

<label>&nbsp;Amount :&nbsp;&nbsp;</label>
<input type="number" min="50" max="15000" name="amount" id="amount" required />
<br/>

<button type="submit" class="button">Send</button>
</form>
<br/>


</body>
</html>