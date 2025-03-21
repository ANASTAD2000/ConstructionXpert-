package Controllers;

//public class DisplayProjectServlet {
//}

import DAO.ProjectDAO;
import Models.Project;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/displayProjects")
public class DisplayProjectServlet extends HttpServlet {
    private ProjectDAO projectDAO = new ProjectDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the list of projects from the database
        List<Project> projects = projectDAO.getAllProjects();

        // Set the projects list as a request attribute
        request.setAttribute("projects", projects);

        // Forward the request to displayProjects.jsp
        request.getRequestDispatcher("displayProjects.jsp").forward(request, response);
    }
}
