<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Manager</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
	
</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="form-group">
				<label for="name">Name: </label>
				<span>${project.name}</span>
			</div>
			
			<div class="form-group">
				<label for="name">Type: </label>
				<span>${project.type}</span>
			</div>
			
			<div class="form-group">
				<label for="name">Sponsor: </label>
				<span>${project.sponsor}</span>
			</div>
			
			<div class="form-group">
				<label for="name">Authorized Funds: </label>
				<span>${project.authorizedFunds}</span>
			</div>
			
			<div class="form-group">
				<label for="name">Authorized Hours: </label>
				<span>${project.authorizedHours}</span>
			</div>
			
			<div class="form-group">
				<label for="name">Description: </label>
				<span>${project.description}</span>
			</div>
			
			<div class="form-group">
				<label for="name">Special: </label>
				<span>${project.special == true ? 'Yes':'No'}</span>
			</div>
		</div>
	</div>
</body>
</html>