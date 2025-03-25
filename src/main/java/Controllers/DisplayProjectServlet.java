package Controllers;

//public class DisplayProjectServlet {
//}

import DAO.DatabaseConnection;
import DAO.ProjectDAO;
import Models.Project;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/displayProjects")
public class DisplayProjectServlet extends HttpServlet {
    private ProjectDAO projectDAO = new ProjectDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Project> projects = null;
        try {
            projects = projectDAO.getAllProjects(DatabaseConnection.getConnection());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.setAttribute("projects", projects);

        request.getRequestDispatcher("displayProjects.jsp").forward(request, response);
    }
}
