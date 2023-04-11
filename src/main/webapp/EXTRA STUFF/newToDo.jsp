<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Simple Form Demo</h1>

	<form name="myForm" action="toDoResults.jsp" method="post">

		<table>
			<tbody>




				<tr>
					<td>Task:</td>
					<td><input type="text" name="task" value="" size="50" /></td>
					<td></td>
				</tr>

				<tr>
					<td>Task Description:</td>
					<td><input type="text" name="taskdesc" value="" size="50" /></td>
					<td></td>
				</tr>


				<tr>
					<td>ToDo Status</td>
					<td><select name="status">
							<option value=" ">Select Progress...</option>
							<option value="IP">In Progress</option>
							<option value="Completed">Completed</option>
					</select></td>

				</tr>



			</tbody>
		</table>
		<input type="reset" value="clear" name="clear" /> <input
			type="submit" value="Submut" name="submit" />

	</form>

</body>
</html>
 --%>
 
 
 <%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>Add Task</title>
</head>
<body>
	<h1>Add Task</h1>
	
	<form method="post" action="toDoResults.jsp">
		<label for="task">Task:</label>
		<input type="text" id="task" name="task"><br>
		
		<input type="submit" value="Add Task">
	</form>
	
	<%
		// Check if the form was submitted
		if (request.getMethod().equals("POST")) {
			
			// Get the task name from the form data
			String task = request.getParameter("task");
			
			// Set up database connection
			Connection conn = null;
			PreparedStatement stmt = null;
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Breitling@1");
				
				// Insert new record into tasks table
				stmt = conn.prepareStatement("INSERT INTO tasks (task) VALUES ('test123')");
				stmt.setString(1, task);
				stmt.executeUpdate();
				
				// Redirect back to the task list page
				response.sendRedirect("taskList.jsp");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				// Close database connection
				try {
					if (stmt != null) stmt.close();
					if (conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	%>
	
</body>
</html>