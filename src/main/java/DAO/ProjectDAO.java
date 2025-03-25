package DAO;
import Models.Project;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjectDAO {

    public Project create(Project project) throws SQLException {

        String sql = "INSERT INTO projects (nom, description, date_debut, date_fin, budget) VALUES (?, ?, ?, ?, ?)";


        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Establishing a connection
            conn = DatabaseConnection.getConnection();

            // Preparing the statement
            stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, project.getName());
            stmt.setString(2, project.getDescription());
            stmt.setDate(3, project.getDateDebut());
            stmt.setDate(4, project.getDateFin());
            stmt.setBigDecimal(5, project.getBudget());

            // Executing the statement
            int affectedRows = stmt.executeUpdate();

            // If the insertion was successful, get the generated project ID
            if (affectedRows > 0) {
                ResultSet rs = stmt.getGeneratedKeys();
                if (rs.next()) {
                    project.setProjectId(rs.getInt(1));  // Set the generated project ID
                }
            }
            return project;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Project> getAllProjects(Connection connn) throws SQLException {
        List<Project> projects = new ArrayList<>();
        String query = "SELECT * FROM projects";
        try (
                PreparedStatement stmt = connn.prepareStatement(query);
                ResultSet rs = stmt.executeQuery()
        ) {
            while (rs.next()) {
                Project project = new Project(
                        rs.getInt("id"),
                        rs.getString("nom"),
                        rs.getString("description"),
                        rs.getDate("date_Debut"),
                        rs.getDate("date_Fin"),
                        rs.getDouble("budget")
                );
                projects.add(project);
            }
            System.out.println("Projects retrieved: " + projects.size()); // ✅ تحقق من عدد المشاريع المسترجعة

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return projects;
    }

    public boolean suprimer(int projectId) {
        Connection conn = null;
        PreparedStatement stmt = null;
        boolean success = false;

        try {
            // Get a connection
            DatabaseMetaData DataSource = null;
            conn = DataSource.getConnection();  // Use your connection method or pool
            if (conn == null || conn.isClosed()) {
                throw new SQLException("Connection is closed.");
            }

            // SQL DELETE statement
            String sql = "DELETE FROM projects WHERE id = ?";

            // Prepare statement
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, projectId);  // Set the project ID in the query

            // Execute the update and check if one row was deleted
            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                success = true;  // The project was successfully deleted
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();  // Close connection after operation
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return success;
    }


}




















