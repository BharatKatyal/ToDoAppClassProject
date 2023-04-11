

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Information</title>
</head>
<%
String firstName = request.getParameter("first");
String lastName = request.getParameter("last");
String email = request.getParameter("email");
String gender = request.getParameter("gender");
String state = request.getParameter("state");
%>
<body>

	<h1>User Information</h1>
	<table border"">
		<tbody>

			<tr>
				<td>First name</td>
				<td><%=firstName %></td>
			</tr>

			<tr>
				<td>Last name</td>
				<td><%=lastName %></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><%=lastName %></td>
			</tr>

			<tr>
				<td>Gender</td>
				<td><%=gender %></td>
			</tr>

			<tr>
				<td>State Born</td>
				<td><%=state %></td>
			</tr>
		</tbody>


	</table>

</body>
</html>