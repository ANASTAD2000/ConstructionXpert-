<%--&lt;%&ndash;<%@ page contentType="text/html; charset=UTF-8" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Add New Project</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h2>Add New Project</h2>&ndash;%&gt;--%>

<%--&lt;%&ndash;<% if (request.getAttribute("error") != null) { %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<p style="color: red;"><%= request.getAttribute("error") %></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<% } %>&ndash;%&gt;--%>

<%--&lt;%&ndash;<form action="addProject" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <label>Project Name:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" name="nom" required>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <label>Description:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <textarea name="description" required></textarea>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <label>Start Date:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="date" name="dateDebut" required>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <label>End Date:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="date" name="dateFin" required>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <label>Budget:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="number" name="budget" step="0.01" required>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <button type="submit">Add Project</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>

<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>

<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Create New Project - ConstructionXpert Services</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background-color: #f5f5f5;--%>
<%--            color: #333;--%>
<%--        }--%>

<%--        .page-header {--%>
<%--            background-color: #ff8800;--%>
<%--            color: white;--%>
<%--            padding: 2rem 0;--%>
<%--            margin-bottom: 2rem;--%>
<%--            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>

<%--        .form-container {--%>
<%--            background-color: white;--%>
<%--            border-radius: 10px;--%>
<%--            padding: 2rem;--%>
<%--            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);--%>
<%--            margin-bottom: 2rem;--%>
<%--        }--%>

<%--        .project-list {--%>
<%--            background-color: white;--%>
<%--            border-radius: 10px;--%>
<%--            padding: 2rem;--%>
<%--            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>

<%--        .btn-submit {--%>
<%--            background-color: #ff8800;--%>
<%--            border: none;--%>
<%--            padding: 0.6rem 2rem;--%>
<%--        }--%>

<%--        .btn-submit:hover {--%>
<%--            background-color: #ff9900;--%>
<%--        }--%>

<%--        .project-item {--%>
<%--            border-left: 4px solid #ff8800;--%>
<%--            background-color: #f9f9f9;--%>
<%--            margin-bottom: 1.5rem;--%>
<%--            border-radius: 5px;--%>
<%--            padding: 1.25rem;--%>
<%--            transition: all 0.3s ease;--%>
<%--        }--%>

<%--        .project-item:hover {--%>
<%--            transform: translateY(-3px);--%>
<%--            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>

<%--        .project-detail {--%>
<%--            margin-bottom: 0.5rem;--%>
<%--        }--%>

<%--        .btn-action {--%>
<%--            margin-left: 5px;--%>
<%--        }--%>

<%--        .home-link {--%>
<%--            color: white;--%>
<%--            text-decoration: none;--%>
<%--            margin-bottom: 1rem;--%>
<%--            display: inline-block;--%>
<%--        }--%>

<%--        .home-link:hover {--%>
<%--            color: #f8f9fa;--%>
<%--            text-decoration: underline;--%>
<%--        }--%>

<%--        label {--%>
<%--            font-weight: 600;--%>
<%--        }--%>

<%--        .budget-badge {--%>
<%--            background-color: #28a745;--%>
<%--            padding: 0.35rem 0.65rem;--%>
<%--            border-radius: 0.25rem;--%>
<%--            color: white;--%>
<%--            display: inline-block;--%>
<%--            margin-right: 0.5rem;--%>
<%--        }--%>

<%--        .project-description {--%>
<%--            color: #6c757d;--%>
<%--            margin-bottom: 1rem;--%>
<%--            display: -webkit-box;--%>
<%--            -webkit-line-clamp: 2;--%>
<%--            -webkit-box-orient: vertical;--%>
<%--            overflow: hidden;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<!-- Header -->--%>
<%--<div class="page-header">--%>
<%--    <div class="container">--%>
<%--        <a href="index.jsp" class="home-link">--%>
<%--            <i class="bi bi-arrow-left"></i> Back to Home--%>
<%--        </a>--%>
<%--        <h1 class="display-5">Create New Project</h1>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="container mb-5">--%>
<%--    <!-- Success/Error Message -->--%>
<%--    <c:if test="${not empty message}">--%>
<%--        <div class="alert alert-${messageType} alert-dismissible fade show" role="alert">--%>
<%--                ${message}--%>
<%--            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>--%>
<%--        </div>--%>
<%--    </c:if>--%>

<%--    <!-- Project Form -->--%>
<%--    <div class="form-container">--%>
<%--        <form action="addProject" method="POST">--%>
<%--            <div class="mb-3">--%>
<%--                <label  class="form-label">Project Name *</label>--%>
<%--                <input type="text" class="form-control" id="projectName" name="nom" required>--%>
<%--            </div>--%>
<%--            <div class="mb-3">--%>
<%--                <label class="form-label">Description *</label>--%>
<%--                <textarea class="form-control" id="projectDescription" name="description" rows="3" required></textarea>--%>
<%--            </div>--%>
<%--            <div class="row mb-3">--%>
<%--                <div class="col-md-6">--%>
<%--                    <label> " class="form-label">Start Date *</label>--%>
<%--                    <input type="date" class="form-control" id="startDate" name="dateDebut" required>--%>
<%--                </div>--%>
<%--                <div class="col-md-6">--%>
<%--                    <label class="form-label">End Date (Optional)</label>--%>
<%--                    <input type="date" class="form-control" id="endDate" name="dateFin">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="mb-4">--%>
<%--                <label  class="form-label">Budget *</label>--%>
<%--                <div class="input-group">--%>
<%--                    <span class="input-group-text">$</span>--%>
<%--                    <input type="number" class="form-control"  name="budget" min="0" step="0.01" required>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <button type="submit" class="btn btn-submit text-white">Create Project</button>--%>
<%--            &lt;%&ndash;    <button type="submit">Add Project</button>&ndash;%&gt;--%>

<%--        </form>--%>
<%--    </div>--%>

<%--    <!-- Projects List -->--%>
<%--    <div class="project-list">--%>
<%--        <h2 class="mb-4">Your Projects</h2>--%>

<%--        <c:choose>--%>
<%--            <c:when test="${not empty projects}">--%>
<%--                <c:forEach var="project" items="${projects}">--%>
<%--                    <div class="project-item">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-8">--%>
<%--                                <h4 class="mb-2">${project.name}</h4>--%>
<%--                                <p class="project-description">${project.description}</p>--%>
<%--                                <div class="d-flex flex-wrap align-items-center">--%>
<%--                                    <div class="project-detail me-3">--%>
<%--                                        <strong><i class="bi bi-calendar-check"></i> Start:</strong>--%>
<%--                                        <fmt:formatDate value="${project.startDate}" pattern="dd/MM/yyyy"/>--%>
<%--                                    </div>--%>
<%--                                    <c:if test="${not empty project.endDate}">--%>
<%--                                        <div class="project-detail me-3">--%>
<%--                                            <strong><i class="bi bi-calendar-x"></i> End:</strong>--%>
<%--                                            <fmt:formatDate value="${project.endDate}" pattern="dd/MM/yyyy"/>--%>
<%--                                        </div>--%>
<%--                                    </c:if>--%>
<%--                                    <div class="budget-badge">--%>
<%--                                        <i class="bi bi-cash"></i> Budget: $<fmt:formatNumber value="${project.budget}" type="number" pattern="#,##0.00"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-md-4 d-flex justify-content-md-end align-items-center mt-3 mt-md-0">--%>
<%--                                <button class="btn btn-outline-primary btn-sm btn-action"--%>
<%--                                        onclick="location.href='${pageContext.request.contextPath}/project/edit?id=${project.id}'">--%>
<%--                                    <i class="bi bi-pencil"></i> Edit--%>
<%--                                </button>--%>
<%--                                <button class="btn btn-outline-danger btn-sm btn-action"--%>
<%--                                        onclick="confirmDelete(${project.id}, '${project.name}')">--%>
<%--                                    <i class="bi bi-trash"></i> Delete--%>
<%--                                </button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </c:forEach>--%>
<%--            </c:when>--%>
<%--            <c:otherwise>--%>
<%--                <div class="text-center py-5">--%>
<%--                    <i class="bi bi-clipboard-x" style="font-size: 3rem; color: #dee2e6;"></i>--%>
<%--                    <h3 class="mt-3">No Projects Yet</h3>--%>
<%--                    <p class="text-muted">Create your first project using the form above</p>--%>
<%--                </div>--%>
<%--            </c:otherwise>--%>
<%--        </c:choose>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!-- Delete Confirmation Modal -->--%>
<%--<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title" id="deleteModalLabel">Confirm Delete</h5>--%>
<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <p>Are you sure you want to delete project "<span id="projectNameToDelete"></span>"?</p>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>--%>
<%--                <form id="deleteForm" action="${pageContext.request.contextPath}/project/delete" method="POST">--%>
<%--                    <input type="hidden" id="projectIdToDelete" name="projectId">--%>
<%--                    <button type="submit" class="btn btn-danger">Delete</button>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--<script>--%>
<%--    // Function to handle the delete confirmation--%>
<%--    function confirmDelete(id, name) {--%>
<%--        document.getElementById('projectIdToDelete').value = id;--%>
<%--        document.getElementById('projectNameToDelete').textContent = name;--%>

<%--        var deleteModal = new bootstrap.Modal(document.getElementById('deleteModal'));--%>
<%--        deleteModal.show();--%>
<%--    }--%>

<%--    // Date validation - ensure end date is after start date--%>
<%--    document.getElementById('startDate').addEventListener('change', function() {--%>
<%--        document.getElementById('endDate').min = this.value;--%>
<%--    });--%>

<%--    // Auto-dismiss alerts after 5 seconds--%>
<%--    window.setTimeout(function() {--%>
<%--        const alertElement = document.querySelector('.alert');--%>
<%--        if (alertElement) {--%>
<%--            const bsAlert = new bootstrap.Alert(alertElement);--%>
<%--            bsAlert.close();--%>
<%--        }--%>
<%--    }, 5000);--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert Services - Creer un projet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .header-bg {
            background-color: #f8f9fa;
            padding: 2rem 0;
            margin-bottom: 2rem;
            border-bottom: 1px solid #e9ecef;
        }

        .form-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">ConstructionXpert</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="displayProjects.jsp">Projets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="addProject.jsp">Crer un projet</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Création de projet Section -->
<section class="py-5 bg-light">
    <div class="container">
        <div class="header-bg rounded">
            <h2 class="text-center mb-4">Creer un nouveau projet</h2>
        </div>

        <div class="form-container">
            <form action="addProject" method="POST">
                <div class="mb-3">
                    <label for="nomProjet" class="form-label">Nom du projet</label>
                    <input type="text" class="form-control" id="nomProjet" name="nom" placeholder="Entrez le nom du projet" required>
                </div>

                <div class="mb-3">
                    <label for="descriptionProjet" class="form-label">Description du projet</label>
                    <textarea class="form-control" id="descriptionProjet"name="description" rows="3" placeholder="Décrivez votre projet" required></textarea>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="dateDebut" class="form-label">Date de debut</label>
                        <input type="date" class="form-control" id="dateDebut" name="dateDebut" required>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="dateFin" class="form-label">Date de fin</label>
                        <input type="date" class="form-control" id="dateFin" name="dateFin" required>
                    </div>
                </div>

                <div class="mb-4">
                    <label for="budget" class="form-label">Budget </label>
                    <input type="number" class="form-control" id="budget" name="budget" placeholder="Entrez le budget" min="0" step="0.01" required>
                </div>

                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-primary">Enregistrer le projet</button>
                    <a href="displayProjects" class="btn btn-outline-secondary">Voir les projets</a>
                </div>
            </form>
        </div>
    </div>
</section>

<footer class="bg-dark text-white py-4 mt-5">
    <div class="container text-center">
        <p>© 2025 ConstructionXpert Services. Tous droits reserves.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Basic form validation
    document.getElementById('projectForm').addEventListener('submit', function(e) {
        e.preventDefault();

        const dateDebut = new Date(document.getElementById('dateDebut').value);
        const dateFin = new Date(document.getElementById('dateFin').value);

        if (dateFin < dateDebut) {
            alert('La date de fin ne peut pas être antérieure à la date de début.');
            return;
        }

        // Ici, vous pourriez ajouter la logique pour envoyer les données au serveur
        alert('Projet créé avec succès!');
        window.location.href = 'projets.html';
    });
</script>
</body>
</html>