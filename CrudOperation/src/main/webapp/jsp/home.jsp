<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CrudOperation</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
.bs-example {
	margin: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="bs-example">
		<h1>INSERT DATA</h1>
			<form action="/Savedata" method="post">
				<div class="form-group">
					<label for="inputEmail">Firstname</label> <input type="text" name="Firstname"
						class="form-control" id="inputEmail" placeholder="Firstname" required>
				</div>
				<div class="form-group">
					<label for="inputPassword">Lastname</label> <input type="text" name="Lastname"
						class="form-control" id="inputPassword" placeholder="Lastname"
						required>
				</div>
				<div class="form-group">
					<label for="inputEmail">Age</label> <input type="text" name="Age"
						class="form-control" id="inputEmail" placeholder="Age" required>
				</div>
				  <input type="checkbox" id="vehicle1" name="vehicle" value="Bike">
 				 <label for="vehicle1"> I have a bike</label><br>
 				 <input type="checkbox" id="vehicle2" name="vehicle" value="Car">
 				 <label for="vehicle2"> I have a car</label><br>
 				 <input type="checkbox" id="vehicle3" name="vehicle" value="Boat">
 				 <label for="vehicle3"> I have a boat</label><br><br>
				<button type="submit" class="btn btn-primary">save</button>
			</form>
			<h1>DELETE DATA</h1>
			<form action="/delete" method="post">
				<div class="form-group">
					<label for="inputEmail">Delete</label> <input type="text" name="id"
						class="form-control" id="inputEmail" placeholder="Firstname" required>
				</div>
				<button type="submit" class="btn btn-primary">delete</button>
			</form>
			<h1>UPDATE DATA</h1>
						<form action="/UpdateData" method="post">
										<div class="form-group">
					<label for="inputEmail">ID</label> <input type="text" name="id"
						class="form-control" id="inputEmail" placeholder="Firstname" required>
				</div>
				<div class="form-group">
					<label for="inputEmail">Firstname</label> <input type="text" name="Firstname"
						class="form-control" id="inputEmail" placeholder="Firstname" required>
				</div>
				<div class="form-group">
					<label for="inputPassword">Lastname</label> <input type="text" name="Lastname"
						class="form-control" id="inputPassword" placeholder="Lastname"
						required>
				</div>
				<div class="form-group">
					<label for="inputEmail">Age</label> <input type="text" name="Age"
						class="form-control" id="inputEmail" placeholder="Age" required>
				</div>
				  <input type="checkbox" id="vehicle1" name="vehicle" value="Bike">
 				 <label for="vehicle1"> I have a bike</label><br>
 				 <input type="checkbox" id="vehicle2" name="vehicle" value="Car">
 				 <label for="vehicle2"> I have a car</label><br>
 				 <input type="checkbox" id="vehicle3" name="vehicle" value="Boat">
 				 <label for="vehicle3"> I have a boat</label><br><br>
				<button type="submit" class="btn btn-primary">update</button>
			</form>
		</div>
	</div>
</body>
</html>