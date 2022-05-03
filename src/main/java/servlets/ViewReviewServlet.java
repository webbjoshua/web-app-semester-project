package servlets;

import models.MovieModel;
import models.UserModel;
import services.MySQLdb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ViewReviewServlet", value = "/ViewReviewServlet")
public class ViewReviewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String revID = request.getParameter("revID");

        MySQLdb db = MySQLdb.getInstance();
        MovieModel movieModel = null;
        try {
            movieModel = db.fetchSingleMovie(Integer.parseInt(revID));
        } catch(SQLException e) {
            e.printStackTrace();
        }

        if (movieModel != null) {

            HttpSession session = request.getSession();
            session.setAttribute("currentMovie", movieModel);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("viewReview.jsp");
            requestDispatcher.forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            request.setAttribute("error", "Issue with loading selected review!");
            requestDispatcher.forward(request, response);
        }
    }
}
