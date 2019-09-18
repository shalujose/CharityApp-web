<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Transactions</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>

<script>
function listcategory(){
    
var url="http://localhost:8080/CharityApp/ViewCategoryServlet";
$.getJSON(url,function(response){
    var list = response;
     document.getElementById("tbody").innerHTML="";
    var content=" ";
for(let ld of list){
    console.log(list);
    content += "<tr>";
    content += "<td>" + ld.category_id + "</td>";
    content += "<td>" + ld.category_name + "</td>";
    
    content += "</tr>";
}
console.log(content);
document.getElementById("tbody").innerHTML =  content;
});
}
</script>
</head>
<body style="text-align:center">
<jsp:include page="header2.jsp"></jsp:include>
<br><br><br>
<h5>Category Details</h5>

<form onsubmit = "listcategory()"> </form> 
<div class="container-fluid">
   <div class="row">
       <div class="col">
           
           <table border="1" class="table table-condensed" id="tbl">
               <thead>
                   <tr>
                       <th>CategoryId</th>
                       <th>Category-Name</th>
                   </tr>
               </thead>
               <tbody id="tbody">
               </tbody>
           </table>
       </div>
   </div>
</div>
<script>
listcategory();
</script>

<a href="adminFeatures.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="addCategory.jsp">New Category</a>
</body>
</body>
</html>