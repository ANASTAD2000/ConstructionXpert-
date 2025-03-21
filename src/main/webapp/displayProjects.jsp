<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert Services - Liste des projets</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .header-bg {
            background-color: #f8f9fa;
            padding: 2rem 0;
            margin-bottom: 2rem;
            border-bottom: 1px solid #e9ecef;
        }

        .project-card {
            transition: transform 0.3s;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .project-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .btn-action {
            margin-right: 5px;
        }

        @media (max-width: 767px) {
            .action-buttons {
                display: flex;
                flex-direction: column;
                gap: 5px;
            }

            .btn-action {
                margin-right: 0;
                width: 100%;
            }
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

<!-- Liste des projets Section -->
<section class="py-5">
    <div class="container">
        <div class="header-bg rounded">
            <h2 class="text-center mb-4">Liste des projets</h2>
        </div>

        <div class="row mb-4">
            <div class="col-md-6">
<%--                <div class="input-group">--%>
<%--                    <input type="text" class="form-control" placeholder="Rechercher un projet...">--%>
<%--                    <button class="btn btn-outline-secondary" type="button">Rechercher</button>--%>
<%--                </div>--%>
            </div>
            <div class="col-md-6 text-md-end mt-3 mt-md-0">
                <a href="addProject.jsp" class="btn btn-primary">+ Nouveau projet</a>
            </div>
        </div>

        <!-- Projet 1 -->
        <div class="card project-card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8">
                        <h4 class="card-title">Renovation Résidence Les Pins</h4>
                        <p class="card-text">Projet de renovation complete des 15 appartements de la residence Les Pins, incluant plomberie, electricité et finitions.</p>
                        <div class="row mt-3">
                            <div class="col-md-4">
                                <p><strong>Date debut:</strong> 01/04/2025</p>
                            </div>
                            <div class="col-md-4">
                                <p><strong>Date fin:</strong> 30/09/2025</p>
                            </div>
                            <div class="col-md-4">
                                <p><strong>Budget:</strong> 450 000 </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex align-items-center justify-content-md-end mt-3 mt-md-0">
                        <div class="action-buttons">
                            <button class="btn btn-outline-primary btn-action">Modifier</button>
                            <button class="btn btn-outline-danger btn-action">Supprimer</button>
                            <button class="btn btn-outline-secondary btn-action" disabled>Créer une tâche</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Projet 2 -->
        <div class="card project-card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8">
                        <h4 class="card-title">Construction Centre Commercial Horizon</h4>
                        <p class="card-text">Construction d'un nouveau centre commercial de 25 000 m² comprenant 40 boutiques, un food court et un parking souterrain.</p>
                        <div class="row mt-3">
                            <div class="col-md-4">
                                <p><strong>Date debut:</strong> 15/05/2025</p>
                            </div>
                            <div class="col-md-4">
                                <p><strong>Date fin:</strong> 10/11/2026</p>
                            </div>
                            <div class="col-md-4">
                                <p><strong>Budget:</strong> 12 500 000 €</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex align-items-center justify-content-md-end mt-3 mt-md-0">
                        <div class="action-buttons">
                            <button class="btn btn-outline-primary btn-action">Modifier</button>
                            <button class="btn btn-outline-danger btn-action">Supprimer</button>
                            <button class="btn btn-outline-secondary btn-action" disabled>Creer une tache</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Projet 3 -->
        <div class="card project-card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8">
                        <h4 class="card-title">Amenagement Espaces Verts Municipaux</h4>
                        <p class="card-text">Projet d'amenagement des espaces verts dans trois parcs municipaux, incluant systemes d'irrigation, plantations et mobilier urbain.</p>
                        <div class="row mt-3">
                            <div class="col-md-4">
                                <p><strong>Date début:</strong> 10/03/2025</p>
                            </div>
                            <div class="col-md-4">
                                <p><strong>Date fin:</strong> 20/07/2025</p>
                            </div>
                            <div class="col-md-4">
                                <p><strong>Budget:</strong> 280 000 €</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex align-items-center justify-content-md-end mt-3 mt-md-0">
                        <div class="action-buttons">
                            <button class="btn btn-outline-primary btn-action">Modifier</button>
                            <button class="btn btn-outline-danger btn-action">Supprimer</button>
                            <button class="btn btn-outline-secondary btn-action" disabled>Creer une tache</button>
                        </div>
                    </div>
                </div>
            </div>
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
    // Exemple de fonction pour la confirmation de suppression
    const deleteButtons = document.querySelectorAll('.btn-outline-danger');
    deleteButtons.forEach(button => {
        button.addEventListener('click', function() {
            if (confirm('Êtes-vous sûr de vouloir supprimer ce projet?')) {
                // Ici, vous pourriez ajouter la logique pour supprimer le projet
                alert('Projet supprimé avec succès!');
                // Simuler la suppression en masquant la carte
                this.closest('.project-card').style.display = 'none';
            }
        });
    });
</script>
</body>
</html>