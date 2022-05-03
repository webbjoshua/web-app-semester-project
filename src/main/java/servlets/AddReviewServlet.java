package servlets;

import services.MySQLdb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AddReviewServlet", value = "/AddReviewServlet")
public class AddReviewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String review_title = request.getParameter("review_title");
        String film_title = request.getParameter("film_title");
        String author_name = request.getParameter("author_name");
        String contributing_author_name = request.getParameter("contributing_author_name");
        String photo_filename = request.getParameter("photo_filename");
        String review_body = request.getParameter("review_body");
        String movie_rating = request.getParameter("movie_rating");
        String number_of_stars = request.getParameter("number_of_stars");
        long i = -1;
        MySQLdb db = MySQLdb.getInstance();
        try {
            i = db.doAddReview(review_title, film_title, author_name, contributing_author_name, photo_filename, review_body, movie_rating, number_of_stars);
        } catch(SQLException e) {
            e.printStackTrace();
        }

        if(i != -1) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/FetchMovieServlet");
            requestDispatcher.forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("addReview.jsp");
            request.setAttribute("error", "Error adding a review, please try again.");
            requestDispatcher.forward(request, response);
        }
    }
}
