<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Amir
  Date: 4/18/2020
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Web App</title>
    <style>
      body {
        text-align: center;
      }

      h2 {
        margin-top: 50px;
      }
    </style>
  </head>
  <body>
  <h1>Hello J2EE</h1>
  <p>this is my first webapp JSP page</p>

  <%
    Date date = new Date();
    out.println("<h2 style=\"color: red;\">" + "first java code insert to JSP file in: " + date.toString() + "</h2>");
  %>
  </body>
</html>
