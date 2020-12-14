<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<p>Click the button to delete student record</p>

	<button onclick="toConfirm()">Delete student record</button>

	<p id="student"></p>
	<script>
		function toConfirm() {
			var text;
			var r = confirm("You clicked on a button to delete student recored. Clik ok ro proceed");
			if (r == true) 
			{   $.ajax({
				  url: "/call?name='gaurav'",
				
				  success: success,
				  dataType: dataType
				});}
				else {
				text = "You clicked on cancel. transaction cancelled.";
			}
			document.getElementById("student").innerHTML = text;
		}
	</script>
</body>
</html>