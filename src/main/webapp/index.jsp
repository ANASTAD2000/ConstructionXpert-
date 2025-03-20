<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert Services - Project Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('${pageContext.request.contextPath}/resources/images/construction-bg.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }
        .home-container {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 15px;
            padding: 3rem;
            max-width: 700px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5);
        }
        .main-title {
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 1rem;
            color: #f8f9fa;
        }
        .subtitle {
            font-size: 1.2rem;
            margin-bottom: 2.5rem;
            color: #dee2e6;
            line-height: 1.6;
        }
        .btn-create {
            padding: 1rem 2.5rem;
            font-size: 1.25rem;
            font-weight: 600;
            border-radius: 50px;
            background-color: #ff8800;
            border: none;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(255, 136, 0, 0.3);
        }
        .btn-create:hover {
            background-color: #ff9900;
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(255, 136, 0, 0.4);
        }
        .btn-create:active {
            transform: translateY(1px);
        }
        .logo {
            max-width: 120px;
            margin-bottom: 2rem;
        }
    </style>
</head>
<body>
<div class="container home-container">
    <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="ConstructionXpert Logo" class="logo">
    <h1 class="main-title">Project Management</h1>
    <p class="subtitle">
        Welcome to ConstructionXpert Services project management platform.
        Efficiently manage your construction projects, tasks, and resources all in one place.
        Get started by creating a new project.
    </p>
    <a href="addProject.jsp" class="btn btn-create">
        Create New Project
    </a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>