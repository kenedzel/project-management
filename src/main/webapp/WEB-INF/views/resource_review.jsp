<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<h2>Please Review for Accuracy.</h2>
			<div class="form-group">
				<label for="project-name">Name: </label><span>${resource.name}</span>
			</div>
			<div class="form-group">
				<label for="project_type">Type: </label><span>${resource.type}</span>
			</div>
			<div class="form-group">
				<label for="project-cost">Cost: </label><span>${resource.cost}</span>
			</div>
			<div class="form-group">
				<label for="project-unitOfMeasure">Unit of Measure: </label><span>${resource.name}</span>
			</div>
			<div class="form-group">
				<label for="project-indicators">Indicators: </label>
				<c:forEach var="indicator" items="${resource.indicators}">
					<span>${indicator}</span>		
				</c:forEach>
			</div>
			
			<a href="<spring:url value="/resource/add"/>" class="btn btn-default">Edit</a>
			<a href="<spring:url value="/resource/save"/>" class="btn btn-default">Save</a>
		</div>
	</div>
</body>
</html>