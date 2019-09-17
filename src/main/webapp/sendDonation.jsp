<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donate Now</title>
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

<jsp:include page="header1.jsp"></jsp:include>
<br><br><br><br>
<h2 style="color:Indigo">GIVE A BIT. CHANGE A LOT</h2>
<br>

<script>
function sendResponse(){
    event.preventDefault();
    var fundrequest_id  = document.getElementById("fundrequest_id").value;
    var cate_id  = document.getElementById("cate_id").value;
    var donor_id  = document.getElementById("donor_id").value;
    var amount = document.getElementById("amount").value;
    var formData = "fundrequest_id=" + fundrequest_id + "&cate_id="+ cate_id + "&donor_id="+ donor_id +"&amount="+ amount;
    console.log(formData);
    var url="http://localhost:8080/CharityApp/DonateFundServlet?"+formData;
    	console.log(url);
    var formData = {};
    $.get(url, function(response){
            console.log(response);
            var msg = JSON.parse(response);
            if (msg.errorMessage!=null) {
                alert("Transaction failed");
            } else {
                alert("Your transaction successfully completed");
                window.location.href = "donorFeatures.jsp";
            }
            
    });
  }
</script>
<form onsubmit="sendResponse()">

<label>&nbsp;Request Id: &nbsp;</label>
<input type="number" min="1" name="fundrequest_id" id="fundrequest_id" required autofocus />
<br/>

<label>Category Id: &nbsp;</label>
<input type="number" min="1" max="4" name="cate_id" id="cate_id" required/>
<br/>

<label>Donor Id: &nbsp;</label>
<input type="number" min="1" max="10" name="donor_id" id="donor_id" required/>
<br/>

<label>Amount :&nbsp;&nbsp;</label>
<input type="number" min="50" max="15000" name="amount" id="amount" required />
<br/>

<button type="submit" class="button">Donate</button>
</form>
</body>
</html>