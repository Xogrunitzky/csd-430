

<%-- Xavier Grunitzky
     Module 2.2 Assignment
     6/14/26
     This program will create a dynamic JSP web page that displays a small “movie database”
     in a table format using Java code and HTML together.
    
     Google search for JSP syntax examples, module readings, and instructional videos provided in the course. 
--%>


<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<%
    /* =========================
       CREATE MOVIE DATA LIST
       ========================= */

    // Create a list to hold all movie records
    ArrayList<HashMap<String, String>> movies = new ArrayList<>();

    /* =========================
       MOVIE 1 RECORD
       ========================= */
    HashMap<String, String> movie1 = new HashMap<>();
    movie1.put("title", "The Hunger Games");
    movie1.put("genre", "Action/Adventure");
    movie1.put("year", "2012");
    movies.add(movie1);

    /* =========================
       MOVIE 2 RECORD
       ========================= */
    HashMap<String, String> movie2 = new HashMap<>();
    movie2.put("title", "Iron Man");
    movie2.put("genre", "Superhero");
    movie2.put("year", "2008");
    movies.add(movie2);

    /* =========================
       MOVIE 3 RECORD
       ========================= */
    HashMap<String, String> movie3 = new HashMap<>();
    movie3.put("title", "Eternals");
    movie3.put("genre", "Superhero/Fantasy");
    movie3.put("year", "2021");
    movies.add(movie3);

    /* =========================
       MOVIE 4 RECORD
       ========================= */
    HashMap<String, String> movie4 = new HashMap<>();
    movie4.put("title", "Knives Out");
    movie4.put("genre", "Mystery");
    movie4.put("year", "2019");
    movies.add(movie4);

    /* =========================
       MOVIE 5 RECORD
       ========================= */
    HashMap<String, String> movie5 = new HashMap<>();
    movie5.put("title", "Spider-Man: No Way Home");
    movie5.put("genre", "Superhero");
    movie5.put("year", "2021");
    movies.add(movie5);
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>My Favorite Movies Database</title>

    <!-- Link to external CSS file -->
    <link rel="stylesheet" href="styles.css">
</head>

<body>

<!-- Page Title -->
<h1>My Favorite Movies Database</h1>

<!-- Overall Data Description -->
<p>
    This database contains five movies that I have enjoyed watching.
    The records are organized by movie title, genre, and release year.
</p>

<!-- Table Section Title -->
<h2>Movie Records</h2>

<!-- HTML Table for displaying movie data -->
<table>

    <!-- Table Header Row -->
    <tr>
        <th>Movie Title</th>
        <th>Genre</th>
        <th>Release Year</th>
    </tr>

    <!-- Loop through movie list and display each record -->
    <% for(HashMap<String, String> movie : movies) { %>
    <tr>
        <td><%= movie.get("title") %></td>
        <td><%= movie.get("genre") %></td>
        <td><%= movie.get("year") %></td>
    </tr>
    <% } %>

</table>

<!-- Field Descriptions Section -->
<h2>Field Descriptions</h2>

<ul>
    <li><strong>Movie Title:</strong> The name of the movie.</li>
    <li><strong>Genre:</strong> The category or style of the movie.</li>
    <li><strong>Release Year:</strong> The year the movie was released.</li>
</ul>

<!-- Record Description Section -->
<h2>Record Description</h2>

<p>
    Each record represents one movie that I have enjoyed. The table
    contains information about the movie title, genre, and release year.
    There are five records included in this database.
</p>

</body>
</html>