<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>

<head>
	<title>Ederson Home Page</title>
</head>

<body>
	<h2>Ederson Home Page - Yoo</h2>
	<hr>
	<p>Welcome to Ederson Company's Home Page </p>
	
	<hr>
		<p>
			User: <security:authentication property="principal.username" /> <br>
			Roles(s): <security:authentication property="principal.authorities" />
		</p>
	<hr>
	
	<security:authorize access="hasRole ('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
			(Only for Managers)
		</p>
	</security:authorize>
	
	<security:authorize access="hasRole ('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
			(Only for Admin)
		</p>
	</security:authorize>
	
	<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
	
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>