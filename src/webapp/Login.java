package webapp;

import Entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* response using java code without any html tag or style
        PrintWriter out = response.getWriter();
        out.print("with post:\n");
        out.print("name: " + request.getParameter("name") + "\npassword: " + request.getParameter("password")); */

        //dispatch data to welcome.jsp to show
        if (User.isValid(request.getParameter("name"), request.getParameter("password"))) {
            request.setAttribute("name", request.getParameter("name"));
            request.setAttribute("password", request.getParameter("password"));
            request.getRequestDispatcher("/welcome.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "unauthorized");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        out.print("name: " + request.getParameter("name") + "\npassword: " + request.getParameter("password"));
    }
}
