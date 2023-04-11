

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

// Import Database Connection Class file
import ToDoServlet.DatabaseConnection;
  

//Servlet Name
@WebServlet("/InsertData")
public class InsertData extends HttpServlet {
 private static final long serialVersionUID = 1L;

 protected void doPost(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException
 {
	 
	 
	 PrintWriter out1 = response.getWriter();  
	 response.setContentType("text/html");  
     out1.println("  <body>\n"
     		+ "    <button onclick=\"window.location.href='http://localhost:8080/SimpleWebForm/index1.jsp';\">\n"
     		+ "      Add To List\n"
     		+ "    </button>\n"
     		+ "  </body>");
     try {

         // Initialize the database
         Connection con = DatabaseConnection.initializeDatabase();

         // Create a SQL query to insert data into demo table
         // demo table consists of two columns, so two '?' is used
         PreparedStatement st = con
                .prepareStatement("INSERT INTO tasksDemo (task) VALUES (?)");
         
         
         PreparedStatement pull = con
                 .prepareStatement("select * from tasksDemo");
         

         // For the first parameter,
         // get the data using request object
         // sets the data to st pointer
//         st.setInt(1, Integer.valueOf(request.getParameter("task_id")));

         // Same for second parameter
         st.setString(1, request.getParameter("task"));

         // Execute the insert command using executeUpdate()
         // to make changes in database
         st.executeUpdate();

       
         
         
         ResultSet rs = pull.executeQuery("select * from tasksDemo");  
         out1.println("<table border=1 width=50% height=50%>");  
         out1.println("<tr><th>Title</th><th>Status</th><th>Modify</th><<tr>");  
         while (rs.next()) {  
             int n = rs.getInt(1);  
             String nm = rs.getString("task");  
             int s = rs.getInt("task_id");   
             boolean j = rs.getBoolean("complete");

             out1.println("<tr><td>" + nm + "</td><td>" +j  + "</td><td>"+ "<input type='button' value='Delete To-Do' id='"+rs.getString("task_id")+"'/>" +"</td></tr>");   
             //https://stackoverflow.com/questions/22018412/retrive-id-and-delete-query-using-button-in-jsp BUTTON
//             $query_string = "delete from $table_info where user_id='id'"; rs.getString("task_id")

             
//             out1.println("<tr><td>" + nm + "</td><td>" +j  + "</td><td>" +"<input type='button' value='Delete' id='"+rs.getString("task_id")+"</td></tr>");   

             

         }  
         out1.println("</table>");  
         out1.println("</html></body>");  
         // Close all the connections
         st.close();
         con.close();
         
        }  
         catch (Exception e) 
        {  
         out1.println( e); 
         

         // Get a writer pointer 
         // to display the successful result
         PrintWriter out = response.getWriter();
         out.println("<html><body><b>Successfully Inserted"
                     + "</b></body></html>");
     }

 }

}



