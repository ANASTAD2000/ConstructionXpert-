package Controllers;

import DAO.ProjectDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

//package Controllers;
//
//public class DeleteProjectServlet {
//}
@WebServlet("/DeleteProjectServlet")
public class DeleteProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("delete".equals(action)) {
            try {
                int projectId = Integer.parseInt(request.getParameter("id"));

                // حذف المشروع من قاعدة البيانات
                ProjectDAO projectDAO = new ProjectDAO();
                boolean isDeleted = projectDAO.suprimer(projectId);

                // إذا تم الحذف بنجاح
                if (isDeleted) {
                    response.sendRedirect("displayProjects.jsp?message=deleted");
                } else {
                    response.sendRedirect("displayProjects.jsp?message=error");

                }
            } catch (NumberFormatException e) {
                response.sendRedirect("displayProjects.jsp?message=invalid-id");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
