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

	<button type="button" id="2" class="delete">Delete</button>

	<script>
		$(document).ready(function() {
			// crating new click event for save button
			$(".delete").click(function() {
				var id = +this.id;
				$.ajax({
					url : "delete-ajax.jsp",
					type : "post",
					data : {
						id : id,
					},
					success : function(data) {
						alert(data); // alerts the response from jsp
						location.reload();
					}
				});
			});
		});
	</script>
</body>
</html>