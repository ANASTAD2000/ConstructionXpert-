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
        String dateDebutStr = request.getParameter("dateDebut");
        String dateFinStr = request.getParameter("dateFin");
        String budgetStr = request.getParameter("budget");

        // Validate input

        if (nom == null || nom.isEmpty() ||
                description == null || description.isEmpty() ||
                dateDebutStr == null || dateFinStr == null ||
                budgetStr == null || budgetStr.isEmpty()) {
            request.setAttribute("error", "All fields are required!");
            request.getRequestDispatcher("addProject.jsp").forward(request, response);
            return;
        }

        try {
            // Convert data to correct types
            Date dateDebut = Date.valueOf(dateDebutStr);
            Date dateFin = Date.valueOf(dateFinStr);
            BigDecimal budget = new BigDecimal(budgetStr);

            // Create Project object
            Project project = new Project();
            project.setName(nom);
            project.setDescription(description);
            project.setDateDebut(dateDebut);
            project.setDateFin(dateFin);
            project.setBudget(budget);

            // Call DAO to add project
            ProjectDAO projectDAO = new ProjectDAO();
            projectDAO.create(project);

            // Redirect to listProjects.jsp
            response.sendRedirect("displayProjects");

        } catch (IllegalArgumentException | SQLException e) {
            request.setAttribute("error", "Data entry error!");
            request.getRequestDispatcher("addProject.jsp").forward(request, response);
        }
    }
}