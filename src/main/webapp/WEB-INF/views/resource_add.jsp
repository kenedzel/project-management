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
	<script src="<spring:url value="/resources/js/resource.js"/>"></script>
	
</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<h1>Resource</h1>
			<spring:url value="/resource/review" var="formUrl"/>
			<form:form method="POST" action="${formUrl}" modelAttribute="resource" cssClass="col-md-8 col-md-offset-2">
				<div class="form-group">
				  <label for="name">Name:</label>
				  <form:input path="name" cssClass="form-control" id="name"/>
			  	</div>
			  	
			  	<div class="form-group">
  				  <label for="type">Type:</label><br>
				  <form:select path="type" items="${typeOptions}" cssClass="selectpicker" id="type"/>
			  	</div>
			  
			  	<div class="form-group">  
 				  <label for="cost">Cost:</label>
				  <form:input path="cost" cssClass="form-control" id="cost"/>
			  	</div>
			  
			  	<div class="form-group">
   				  <label for="unitOfMeasure">Unit of Measure:</label>
  				  <form:radiobuttons path="unitOfMeasure" items="${radioOptions}" id="unitOfMeasure"/>	
			  	</div>
				  			  
			  	<div class="form-group">
   				  <label for="indicators">Indicators:</label>
  				  <form:checkboxes path="indicators" items="${checkOptions}" id="indicators"/>	
  				  <a id="request-link" href="<spring:url value="/resource/request" />">Send Request</a>
			  	</div>
			  	
			  	<div class="form-group">
			  		<label for="notes">Notes: </label>
			  		<form:textarea path="notes" cssClass="form-control" rows="3" id="notes"/>
			  	</div>
			  
				<button type="submit" class="btn btn-default">Submit</button>
			</form:form>

		</div>
	</div>
</body>
</html>