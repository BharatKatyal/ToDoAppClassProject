//package ToDoServlet;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//
//// Import Database Connection Class file
//import ToDoServlet.DatabaseConnection;
//
////Servlet Name
//@WebServlet("/DeleteData")
//public class DeleteData extends HttpServlet {
//  private static final long serialVersionUID = 1L;
//
//  protected void doPost(HttpServletRequest request, HttpServletResponse response)
//      throws ServletException, IOException
//  {
//      try {
//          // Initialize the database
//          Connection con = DatabaseConnection.initializeDatabase();
//
//          // Create a SQL query to delete the corresponding entry from the database
//          PreparedStatement st = con.prepareStatement("DELETE FROM tasksDemo WHERE task_id=?");
//
//          // Set the task_id parameter in the query
//          st.setInt(1, Integer.parseInt(request.getParameter("task_id")));
//
//          // Execute the delete command using executeUpdate() to make changes in the database
//          st.executeUpdate();
//
//          // Close all the connections
//          st.close();
//          con.close();
//
//          // Redirect back to the original page
//          response.sendRedirect("index1.jsp");
//      }
//      catch (Exception e) {
//          PrintWriter out = response.getWriter();
//          out.println(e);
//      }
//  }
//}
