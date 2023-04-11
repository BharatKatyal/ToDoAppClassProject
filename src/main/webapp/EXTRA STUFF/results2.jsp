	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
String task = null;
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
<form method="post">

<table border="2">
<tr>
<td>Task</td>
<td>Task</td>
<td>SKILL</td>
<td>ACTION</td>
</tr>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="Breitling@1";
String query="select * from tasks";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
System.out.println(task);

while(rs.next())
{

%>
<tr>
<td><%System.out.print(task); %></td>
</tr>
 <tr>
    <td><%=rs.getString("task") %></td>
    <td><%=rs.getString("task") %></td>
</tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>

</html> 