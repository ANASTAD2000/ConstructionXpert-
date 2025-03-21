<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>ConstructionXpert Services - Project Management</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('${pageContext.request.contextPath}/resources/images/construction-bg.jpg');--%>
<%--            background-size: cover;--%>
<%--            background-position: center;--%>
<%--            height: 100vh;--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            justify-content: center;--%>
<%--            color: white;--%>
<%--        }--%>
<%--        .home-container {--%>
<%--            text-align: center;--%>
<%--            background-color: rgba(0, 0, 0, 0.7);--%>
<%--            border-radius: 15px;--%>
<%--            padding: 3rem;--%>
<%--            max-width: 700px;--%>
<%--            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5);--%>
<%--        }--%>
<%--        .main-title {--%>
<%--            font-size: 3rem;--%>
<%--            font-weight: 700;--%>
<%--            margin-bottom: 1rem;--%>
<%--            color: #f8f9fa;--%>
<%--        }--%>
<%--        .subtitle {--%>
<%--            font-size: 1.2rem;--%>
<%--            margin-bottom: 2.5rem;--%>
<%--            color: #dee2e6;--%>
<%--            line-height: 1.6;--%>
<%--        }--%>
<%--        .btn-create {--%>
<%--            padding: 1rem 2.5rem;--%>
<%--            font-size: 1.25rem;--%>
<%--            font-weight: 600;--%>
<%--            border-radius: 50px;--%>
<%--            background-color: #ff8800;--%>
<%--            border: none;--%>
<%--            transition: all 0.3s ease;--%>
<%--            box-shadow: 0 4px 15px rgba(255, 136, 0, 0.3);--%>
<%--        }--%>
<%--        .btn-create:hover {--%>
<%--            background-color: #ff9900;--%>
<%--            transform: translateY(-3px);--%>
<%--            box-shadow: 0 6px 20px rgba(255, 136, 0, 0.4);--%>
<%--        }--%>
<%--        .btn-create:active {--%>
<%--            transform: translateY(1px);--%>
<%--        }--%>
<%--        .logo {--%>
<%--            max-width: 120px;--%>
<%--            margin-bottom: 2rem;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container home-container">--%>
<%--    <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="ConstructionXpert Logo" class="logo">--%>
<%--    <h1 class="main-title">Project Management</h1>--%>
<%--    <p class="subtitle">--%>
<%--        Welcome to ConstructionXpert Services project management platform.--%>
<%--        Efficiently manage your construction projects, tasks, and resources all in one place.--%>
<%--        Get started by creating a new project.--%>
<%--    </p>--%>
<%--    <a href="addProject.jsp" class="btn btn-create">--%>
<%--        Create New Project--%>
<%--    </a>--%>
<%--</div>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert Services - Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('https://via.placeholder.com/1200x400');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 100px 0;
            margin-bottom: 40px;
        }

        .feature-card {
            transition: transform 0.3s;
            height: 100%;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="index.html">ConstructionXpert</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="displayProjects.jsp">Projets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addProject.jsp">Creer un projet</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section text-center">
    <div class="container">
        <h1 class="display-4 mb-4">ConstructionXpert Services</h1>
        <p class="lead mb-5">Application de gestion de projets de construction pour planifier,
            organiser et suivre efficacement tous vos projets et ressources.</p>
        <a href="addProject.jsp" class="btn btn-primary btn-lg">Creer un projet</a>
    </div>
</section>

<!-- Features Section -->
<div class="container mb-5">
    <div class="row text-center">
        <div class="col-md-4 mb-4">
            <div class="card p-3 feature-card">
                <div class="card-body">
                    <h3>Gestion de Projets</h3>
                    <p>Créez, suivez et mettez à jour facilement tous vos projets de construction.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card p-3 feature-card">
                <div class="card-body">
                    <h3>Gestion des Taches</h3>
                    <p>Organisez et assignez des taches specifiques a chaque projet.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card p-3 feature-card">
                <div class="card-body">
                    <h3>Gestion des Ressources</h3>
                    <p>Suivez toutes vos ressources et leur attribution aux differentes taches.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="bg-dark text-white py-4">
    <div class="container text-center">
        <p>© 2025 ConstructionXpert Services. Tous droits reserves.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>