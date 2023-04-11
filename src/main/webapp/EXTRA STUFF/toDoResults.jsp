<%-- 

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Information</title>
</head>
<%
String task = request.getParameter("task");
String taskdesc = request.getParameter("taskdesc");
String status = request.getParameter("status");

%>
<body>

	<h1>User Information</h1>
	<table border"">
		<table>
	
	<tbody>
		<tr>
			<td>Task:</td>
			<td>Task Description:</td>
			<td>ToDo Status</td>
		</tr>

		<tr>
			<td><%=task%></td>
			<td><%=taskdesc%></td>
			<td><%=status%></td>
		</tr>



	</tbody>


	</table>
</body>
</html> --%>


<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>Task List</title>
</head>
<body>
	<h1>Task List</h1>
	
	<table>
		<tr>
			<th>ID</th>
			<th>Task</th>
			<th>Complete</th>
		</tr>
		
		<%
			// Set up database connection
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Breitling@1");
				System.out.println("Connected");

				// Retrieve all records from tasks table
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT * FROM tasks");
				
				// Loop through result set and display each record in a table row
				while(rs.next()) {
					int task_id = rs.getInt("task_id");
					String task = rs.getString("task");
					boolean complete = rs.getBoolean("complete");
					
					%>
					<tr>
						<td><%=task_id%></td>
						<td><%=task%></td>
						<td><%=complete%></td>
					</tr>
					<%
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				// Close database connection
				try {
					if (rs != null) rs.close();
					if (stmt != null) stmt.close();
					if (conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		%>
	</table>
	
</body>
</html>