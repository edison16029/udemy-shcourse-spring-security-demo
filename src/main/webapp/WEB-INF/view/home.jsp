<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
	<title>Ederson Home Page</title>
</head>

<body>
	<h2>Ederson Home Page - Yoo</h2>
	<hr>
	<p>Welcome to Ederson Company's Home Page </p>
	
	<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
	
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>