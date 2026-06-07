<!-- Xavier Grunitzky
    Assignment Module 1.3
    6/7/26
This JSP file generates HTML on the Tomcat server and then sends that HTML to the user's web browser.\

Google and module videos was used to research JSP, Jakarta EE, and Tomcat concepts.
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>My First JSP</title>
</head>
<body>

<h1>This is JSP Project!</h1>

<%
    String name = "Xavier";
%>

<p>Hello, <%= name %>!</p>

<p>Current Date and Time:
    <%= new java.util.Date() %>
</p>

</body>
</html>