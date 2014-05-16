<%-- 
    Document   : index
    Created on : 26/04/2014, 12:34:46 PM
    Author     : 25
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <TITLE>Inserted data in a Table</TITLE>
    </head>
   <body BGCOLOR="cyan">
    
      <H1>Inserted data in a Table</H1>
      <% 
          Connection connection =DriverManager.getConnection("jdbc:odbc:amigos");
          Statement statement = connection.createStatement();
          String command = "INSERT INTO Employee(ID, Name) VALUES(1,'Vikas')";
          statement.executeUpdate(command);
          command =  "INSERT INTO Employee(ID, Name) VALUES (2,'Akshay')";
          statement.executeUpdate(command);
          ResultSet resultset = 
          statement.executeQuery("select * from Employee");
          while(resultset.next()){ 
       %>
        <TABLE BORDER="1">
           <TR>
               <TH>ID</TH>
               <TH>Name</TH>
          </TR>
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
           </TR>
       </TABLE>
        <% 
         } 
        %>
      </BODY>
</html>
