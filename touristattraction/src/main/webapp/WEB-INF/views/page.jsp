<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	
	<title>Tourist Attraction - ${title}</title>
	
	<script>
		window.menu = '${title}';
	</script>
	
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="${images}/favicon.ico" />
	
	<!-- Bootstrap core CSS -->
	<link href="${css}/bootstrap.min.css" rel="stylesheet">
	
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="${css}/myapp.css" rel="stylesheet" />
</head>
<body>
	<!-- Responsive navbar-->
	<%@ include file="./shared/navbar.jsp" %>

	<!-- Page content-->
	<!-- Home Page -->
	<c:if test="${userClickHome == true}">
		<%@ include file="home.jsp" %>
	</c:if>
	
	<!-- About us Page -->
	<c:if test="${userClickAbout == true}">
		<%@ include file="about.jsp" %>
	</c:if>
	
	<!-- Contact us Page -->
	<c:if test="${userClickContact == true}">
		<%@ include file="contact.jsp" %>
	</c:if>
	
	<!-- Footer-->
	<%@ include file="./shared/footer.jsp" %>
	
	<!-- Bootstrap core JS-->
	<script src="${js}/bootstrap.bundle.min.js"></script>
	
	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>
	
	<!-- Core theme JS-->
	<script src="${js}/myapp.js"></script>
</body>
</html>