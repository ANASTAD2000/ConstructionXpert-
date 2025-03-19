package Controllers;


import DAO.ProjectDAO;
import Models.Project;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet("/addProject") // Servlet Mapping
public class AddProjectServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get data from form
        String nom = request.getParameter("nom");
        String description = request.getParameter("description");
        String startDateStr = request.getParameter("start_date");
        String endDateStr = request.getParameter("end_date");
        String budgetStr = request.getParameter("budget");

        // Validate input

        if (nom == null || nom.isEmpty() ||
                description == null || description.isEmpty() ||
                startDateStr == null || endDateStr == null ||
                budgetStr == null || budgetStr.isEmpty()) {
            request.setAttribute("error", "All fields are required!");
            request.getRequestDispatcher("addProject.jsp").forward(request, response);
            return;
        }

        try {
            // Convert data to correct types
            Date startDate = Date.valueOf(startDateStr);
            Date endDate = Date.valueOf(endDateStr);
            BigDecimal budget = new BigDecimal(budgetStr);

            // Create Project object
            Project project = new Project();
            project.setName(nom);
            project.setDescription(description);
            project.setDateDebut(startDate);
            project.setDateFin(endDate);
            project.setBudget(budget);

            // Call DAO to add project
            ProjectDAO projectDAO = new ProjectDAO();
            projectDAO.create(project);

            // Redirect to listProjects.jsp
            response.sendRedirect("listProjects.jsp");

        } catch (IllegalArgumentException | SQLException e) {
            request.setAttribute("error", "Data entry error!");
            request.getRequestDispatcher("addProject.jsp").forward(request, response);
        }
    }
}
