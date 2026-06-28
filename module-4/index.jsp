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
    // Create a list to hold MovieBean objects.
    ArrayList<MovieBean> movies = new ArrayList<>();

    // Create the first movie and add it to the list.
    MovieBean movie1 = new MovieBean();
    movie1.setTitle("The Hunger Games");
    movie1.setGenre("Action/Adventure");
    movie1.setYear(2012);
    movies.add(movie1);

    // Create the remaining movie records.
    MovieBean movie2 = new MovieBean();
    movie2.setTitle("Iron Man");
    movie2.setGenre("Superhero");
    movie2.setYear(2008);
    movies.add(movie2);

    MovieBean movie3 = new MovieBean();
    movie3.setTitle("Eternals");
    movie3.setGenre("Superhero/Fantasy");
    movie3.setYear(2021);
    movies.add(movie3);

    MovieBean movie4 = new MovieBean();
    movie4.setTitle("Knives Out");
    movie4.setGenre("Mystery");
    movie4.setYear(2019);
    movies.add(movie4);

    MovieBean movie5 = new MovieBean();
    movie5.setTitle("Spider-Man: No Way Home");
    movie5.setGenre("Superhero");
    movie5.setYear(2021);
    movies.add(movie5);

    // Store the list in the request object.
    request.setAttribute("movies", movies);

    // Forward the request to the display page.
    RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
    rd.forward(request, response);
%>