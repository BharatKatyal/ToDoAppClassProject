<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  --%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
</head>
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


<body>
   <%--  <sql:setDataSource
        var="myDS"
        driver = "com.mysql.cj.jdbc.Driver"
        url ="jdbc:mysql://localhost:3306/test"
        user="root" password="Breitling@1"
    />
     
    <sql:query var="tasks"   dataSource="${myDS}">
        SELECT * FROM tasks;
    </sql:query> --%>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>tasks</th>
                <th>task</th>
                <th>task</th>
                <th>task</th>
            </tr>
            <c:forEach var="task" items="${tasks.rows}">
                <tr>
                    <td><c:out value="${tasks.task}" /></td>
                    <td><c:out value="${tasks.task}" /></td>
                    <td><c:out value="${tasks.task}" /></td>
                    <td><c:out value="${tasks.task}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>