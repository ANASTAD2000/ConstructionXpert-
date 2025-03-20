<%--<%@ page contentType="text/html; charset=UTF-8" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Add New Project</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Add New Project</h2>--%>

<%--<% if (request.getAttribute("error") != null) { %>--%>
<%--<p style="color: red;"><%= request.getAttribute("error") %></p>--%>
<%--<% } %>--%>

<%--<form action="addProject" method="post">--%>
<%--    <label>Project Name:</label>--%>
<%--    <input type="text" name="nom" required>--%>

<%--    <label>Description:</label>--%>
<%--    <textarea name="description" required></textarea>--%>

<%--    <label>Start Date:</label>--%>
<%--    <input type="date" name="dateDebut" required>--%>

<%--    <label>End Date:</label>--%>
<%--    <input type="date" name="dateFin" required>--%>

<%--    <label>Budget:</label>--%>
<%--    <input type="number" name="budget" step="0.01" required>--%>

<%--    <button type="submit">Add Project</button>--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create New Project - ConstructionXpert Services</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <style>
        body {
            background-color: #f5f5f5;
            color: #333;
        }

        .page-header {
            background-color: #ff8800;
            color: white;
            padding: 2rem 0;
            margin-bottom: 2rem;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .form-container {
            background-color: white;
            border-radius: 10px;
            padding: 2rem;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 2rem;
        }

        .project-list {
            background-color: white;
            border-radius: 10px;
            padding: 2rem;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
        }

        .btn-submit {
            background-color: #ff8800;
            border: none;
            padding: 0.6rem 2rem;
        }

        .btn-submit:hover {
            background-color: #ff9900;
        }

        .project-item {
            border-left: 4px solid #ff8800;
            background-color: #f9f9f9;
            margin-bottom: 1.5rem;
            border-radius: 5px;
            padding: 1.25rem;
            transition: all 0.3s ease;
        }

        .project-item:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .project-detail {
            margin-bottom: 0.5rem;
        }

        .btn-action {
            margin-left: 5px;
        }

        .home-link {
            color: white;
            text-decoration: none;
            margin-bottom: 1rem;
            display: inline-block;
        }

        .home-link:hover {
            color: #f8f9fa;
            text-decoration: underline;
        }

        label {
            font-weight: 600;
        }

        .budget-badge {
            background-color: #28a745;
            padding: 0.35rem 0.65rem;
            border-radius: 0.25rem;
            color: white;
            display: inline-block;
            margin-right: 0.5rem;
        }

        .project-description {
            color: #6c757d;
            margin-bottom: 1rem;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
    </style>
</head>
<body>
<!-- Header -->
<div class="page-header">
    <div class="container">
        <a href="index.jsp" class="home-link">
            <i class="bi bi-arrow-left"></i> Back to Home
        </a>
        <h1 class="display-5">Create New Project</h1>
    </div>
</div>

<div class="container mb-5">
    <!-- Success/Error Message -->
    <c:if test="${not empty message}">
        <div class="alert alert-${messageType} alert-dismissible fade show" role="alert">
                ${message}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <!-- Project Form -->
    <div class="form-container">
        <form action="addProject" method="POST">
            <div class="mb-3">
                <label  class="form-label">Project Name *</label>
                <input type="text" class="form-control" id="projectName" name="nom" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Description *</label>
                <textarea class="form-control" id="projectDescription" name="description" rows="3" required></textarea>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label> " class="form-label">Start Date *</label>
                    <input type="date" class="form-control" id="startDate" name="dateDebut" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label">End Date (Optional)</label>
                    <input type="date" class="form-control" id="endDate" name="dateFin">
                </div>
            </div>
            <div class="mb-4">
                <label  class="form-label">Budget *</label>
                <div class="input-group">
                    <span class="input-group-text">$</span>
                    <input type="number" class="form-control"  name="budget" min="0" step="0.01" required>
                </div>
            </div>
            <button type="submit" class="btn btn-submit text-white">Create Project</button>
            <%--    <button type="submit">Add Project</button>--%>

        </form>
    </div>

    <!-- Projects List -->
    <div class="project-list">
        <h2 class="mb-4">Your Projects</h2>

        <c:choose>
            <c:when test="${not empty projects}">
                <c:forEach var="project" items="${projects}">
                    <div class="project-item">
                        <div class="row">
                            <div class="col-md-8">
                                <h4 class="mb-2">${project.name}</h4>
                                <p class="project-description">${project.description}</p>
                                <div class="d-flex flex-wrap align-items-center">
                                    <div class="project-detail me-3">
                                        <strong><i class="bi bi-calendar-check"></i> Start:</strong>
                                        <fmt:formatDate value="${project.startDate}" pattern="dd/MM/yyyy"/>
                                    </div>
                                    <c:if test="${not empty project.endDate}">
                                        <div class="project-detail me-3">
                                            <strong><i class="bi bi-calendar-x"></i> End:</strong>
                                            <fmt:formatDate value="${project.endDate}" pattern="dd/MM/yyyy"/>
                                        </div>
                                    </c:if>
                                    <div class="budget-badge">
                                        <i class="bi bi-cash"></i> Budget: $<fmt:formatNumber value="${project.budget}" type="number" pattern="#,##0.00"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 d-flex justify-content-md-end align-items-center mt-3 mt-md-0">
                                <button class="btn btn-outline-primary btn-sm btn-action"
                                        onclick="location.href='${pageContext.request.contextPath}/project/edit?id=${project.id}'">
                                    <i class="bi bi-pencil"></i> Edit
                                </button>
                                <button class="btn btn-outline-danger btn-sm btn-action"
                                        onclick="confirmDelete(${project.id}, '${project.name}')">
                                    <i class="bi bi-trash"></i> Delete
                                </button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div class="text-center py-5">
                    <i class="bi bi-clipboard-x" style="font-size: 3rem; color: #dee2e6;"></i>
                    <h3 class="mt-3">No Projects Yet</h3>
                    <p class="text-muted">Create your first project using the form above</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<!-- Delete Confirmation Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteModalLabel">Confirm Delete</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to delete project "<span id="projectNameToDelete"></span>"?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <form id="deleteForm" action="${pageContext.request.contextPath}/project/delete" method="POST">
                    <input type="hidden" id="projectIdToDelete" name="projectId">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Function to handle the delete confirmation
    function confirmDelete(id, name) {
        document.getElementById('projectIdToDelete').value = id;
        document.getElementById('projectNameToDelete').textContent = name;

        var deleteModal = new bootstrap.Modal(document.getElementById('deleteModal'));
        deleteModal.show();
    }

    // Date validation - ensure end date is after start date
    document.getElementById('startDate').addEventListener('change', function() {
        document.getElementById('endDate').min = this.value;
    });

    // Auto-dismiss alerts after 5 seconds
    window.setTimeout(function() {
        const alertElement = document.querySelector('.alert');
        if (alertElement) {
            const bsAlert = new bootstrap.Alert(alertElement);
            bsAlert.close();
        }
    }, 5000);
</script>
</body>
</html>