<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JSTL Test</title>
</head>
<body>
	
	<!-- SECTION 1 -->
	<h3>Section 1</h3>
	<!-- set, used to create a variable and assign it an initial value  -->
	<!--  here the variable "test" is being set to the value "Test Value" -->
	<c:set scope="page" var="test">Test Value</c:set>
	<!-- out, used to write the value of a variable back to the browser -->
	<c:out value="${test}" />
	
	<!-- SECTION 2 -->
	<h3>Section 2</h3>
	<!-- forEach iterates over a collection of values -->
	<c:forEach var="count" begin="1" end="10" step="1">
		<!--  if tag testing and outputing only if test passes (in this case, for even values of count -->
		<c:if test="${ (count % 2) == 0 }">
			<p>${count} is an even number!</p>
		</c:if>
	</c:forEach>
	
	<!-- SECTION 3 -->
	<h3>Section 3</h3>
	<c:set scope="page" var="week">Sun-Mon-Tue-Wed-Thu-Fri-Sat</c:set>
	<select>
		<!--  forTokens iterates over a string list delimited by commas or a specified character -->
		<c:forTokens items="${week}" delims="-" var="day">
			<option value="${day}"> ${day} </option>
		</c:forTokens>
	</select>
</body>
</html>