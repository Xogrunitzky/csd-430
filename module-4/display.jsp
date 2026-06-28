<%-- Xavier Grunitzky
      Module 4.2 Assignment
      6/28/26
      This program demonstrates the use of a JavaBean in a JavaServer Pages (JSP) application.
      The MovieBean class stores information about a movie, including its title, genre, and release year.
       The index.jsp page creates several MovieBean objects, populates them with data, and stores them in a list. The list is then passed to display.jsp
      ,which retrieves the data and displays it in a formatted HTML table.

--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.MovieBean" %>

<%
  // Retrieve the list of movies from the request.
  ArrayList<MovieBean> movies =
          (ArrayList<MovieBean>) request.getAttribute("movies");
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>My Favorite Movies Database</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 40px;
      background: #f5f5f5;
    }

    h1, h2 {
      color: #003366;
    }

    table {
      width: 70%;
      border-collapse: collapse;
      background: white;
    }

    th, td {
      border: 1px solid #ccc;
      padding: 10px;
      text-align: left;
    }

    th {
      background: #003366;
      color: white;
    }

    tr:nth-child(even) {
      background: #eeeeee;
    }
  </style>
</head>

<body>

<h1>My Favorite Movies Database</h1>

<p>
  This database contains five of my favorite movies.
  Each record includes the movie title, genre, and release year.
</p>

<h2>Movie Records</h2>

<!-- Display the movie information in a table -->
<table>

  <tr>
    <th>Movie Title</th>
    <th>Genre</th>
    <th>Release Year</th>
  </tr>

  <%-- Loop through each MovieBean and display its data. --%>
  <% for (MovieBean movie : movies) { %>

  <tr>
    <td><%= movie.getTitle() %></td>
    <td><%= movie.getGenre() %></td>
    <td><%= movie.getYear() %></td>
  </tr>

  <% } %>

</table>

<h2>Field Descriptions</h2>

<ul>
  <li><strong>Movie Title:</strong> The name of the movie.</li>
  <li><strong>Genre:</strong> The category or type of movie.</li>
  <li><strong>Release Year:</strong> The year the movie was released.</li>
</ul>

<h2>Record Description</h2>

<p>
  Each row in the table represents one movie stored in a MovieBean object.
  The information is gathered from the JavaBeans and displayed in this formatted table.
</p>

</body>
</html>