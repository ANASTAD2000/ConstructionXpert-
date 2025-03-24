package DAO;
import Models.Project;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.mysql.cj.conf.PropertyKey.PASSWORD;
import static com.mysql.cj.conf.PropertyKey.USER;
import static jakarta.servlet.SessionTrackingMode.URL;

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
        } finally {
            // Closing resources
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    }

    public List<Project> getAllProjects() {
        List<Project> projects = new ArrayList<>();
        String query = "SELECT * FROM projects";
        try (Connection conn = DatabaseConnection.getConnection();

             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return projects;
    }


}




















