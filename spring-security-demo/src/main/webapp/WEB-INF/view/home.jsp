<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>

<h2>Homepage</h2>
<hr>
<p>Welcome to the Homepage</p>

		<!-- display user name and roles -->
	<p>
	User: <security:authentication property="principal.username"/>
	<br><br>
	Role(s): <security:authentication property="principal.authorities"/>
	</p>

		<!-- Add logout button -->
 
 	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
		<input type="submit" value="Logout"/>
			   
	</form:form>








</body>
</html>