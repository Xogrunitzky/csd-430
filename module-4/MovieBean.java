/*
      Xavier Grunitzky
      Module 4.2 Assignment
      6/28/26
      This program demonstrates the use of a JavaBean in a JavaServer Pages (JSP) application.
      The MovieBean class stores information about a movie, including its title, genre, and release year.
       The index.jsp page creates several MovieBean objects, populates them with data, and stores them in a list. The list is then passed to display.jsp
      ,which retrieves the data and displays it in a formatted HTML table.


 */
package model;

import java.io.Serializable;

// JavaBean used to store information about a movie.
public class MovieBean implements Serializable {

    // Private fields for movie information.
    private String title;
    private String genre;
    private int year;

    // Required no-argument constructor.
    public MovieBean() {
    }

    // Returns the movie title.
    public String getTitle() {
        return title;
    }

    // Sets the movie title.
    public void setTitle(String title) {
        this.title = title;
    }

    // Returns the movie genre.
    public String getGenre() {
        return genre;
    }

    // Sets the movie genre.
    public void setGenre(String genre) {
        this.genre = genre;
    }

    // Returns the release year.
    public int getYear() {
        return year;
    }

    // Sets the release year.
    public void setYear(int year) {
        this.year = year;
    }
}