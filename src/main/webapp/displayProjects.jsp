<%@ page import="Models.Project" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des projets</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">ConstructionXpert</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="displayProjects.jsp">Projets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addProject.jsp">Creer un projet</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Liste des projets -->
<section class="container mt-5">
    <h2 class="text-center">Liste des projets</h2>
    <div class="row">
        <%
            // Retrieve the projects list from request
            List<Project> projects = (List<Project>) request.getAttribute("projects");

            if (projects != null) {
                for (Project project : projects) {
        %>
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-body">
                    <h5 class="card-title"><%= project.getName() %></h5>
                    <p class="card-text"><%= project.getDescription() %></p>
                    <p><strong>Date début:</strong> <%= project.getDateDebut() %></p>
                    <p><strong>Date fin:</strong> <%= project.getDateFin() %></p>
                    <p><strong>Budget:</strong> <%= project.getBudget() %></p>
                    <a href="editProject.jsp?id=<%= project.getProjectId() %>" class="btn btn-primary">Modifier</a>
                    <a href="di?id=<%= project.getProjectId() %>" class="btn btn-danger">Supprimer</a>
                </div>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <p>Aucun projet disponible.</p>
        <%
            }
        %>
    </div>
</section>

<!-- Footer -->
<footer class="bg-dark text-white py-4 mt-5">
    <div class="container text-center">
        <p>© 2025 ConstructionXpert Services. Tous droits réservés.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
