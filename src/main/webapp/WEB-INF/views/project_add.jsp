<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Manager</title>

	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
	
</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
		<spring:url value="/project/add" var="formUrl"/>
			<form:form method="POST" action="${formUrl}" modelAttribute="project" cssClass="col-md-8 col-md-offset-2">
			  <div class="form-group">
				  <label for="name">Name:</label>
				  <form:input path="name" cssClass="form-control" id="name"/>

				  <label for="type">Type:</label><br>
				  <form:select path="type" items="${types}" cssClass="selectpicker" id="type"/>
  					<br>
  
  				  <label for="sponsor-name">Sponsor Name:</label>
				  <form:input path="sponsor.name" cssClass="form-control" id="sponsor-name"/>
				  			  
   				  <label for="sponsor-phone">Sponsor Phone:</label>
				  <form:input path="sponsor.phone" cssClass="form-control" id="sponsor-phone"/>
				  
  				  <label for="sponsor-email">Sponsor Email:</label>
				  <form:input path="sponsor.email" cssClass="form-control" id="sponsor-email"/>		
				    
  				  <label for="authorizedFunds">Authorized Funds:</label>
				  <form:input path="authorizedFunds" cssClass="form-control" id="authorizedFunds"/>				
				    
  				  <label for="authorizedHours">Authorized Hours:</label>
				  <form:input path="authorizedHours" cssClass="form-control" id="authorizedHours"/>
				  
				  <label for="description">Description:</label>
	  			  <form:textarea path="description" cssClass="form-control" rows="3" id="description"/>
	  			  
   				  <label for="poc">Point of Contact 1:</label>
				  <form:input path="pointsOfContact[0]" cssClass="form-control" id="poc"/>
				  
   				  <label for="poc2">Point of Contact 2:</label>
				  <form:input path="pointsOfContact[1]" cssClass="form-control" id="poc2"/>
				  
   				  <label for="poc3">Point of Contact 3:</label>
				  <form:input path="pointsOfContact[2]" cssClass="form-control" id="poc3"/>
	  				
				  <div class="checkbox">
				  <label><input type="checkbox" name="special"> Special</label>
				</div>
			  </div>


				<button type="submit" class="btn btn-default">Submit</button>
			</form:form>
		</div>
	</div>
</body>
</html>