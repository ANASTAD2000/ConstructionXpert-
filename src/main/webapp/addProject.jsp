<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Add New Project</title>
</head>
<body>
<h2>Add New Project</h2>

<% if (request.getAttribute("error") != null) { %>
<p style="color: red;"><%= request.getAttribute("error") %></p>
<% } %>

<form action="addProject" method="post">
    <label>Project Name:</label>
    <input type="text" name="nom" required>

    <label>Description:</label>
    <textarea name="description" required></textarea>

    <label>Start Date:</label>
    <input type="date" name="dateDebut" required>

    <label>End Date:</label>
    <input type="date" name="dateFin" required>

    <label>Budget:</label>
    <input type="number" name="budget" step="0.01" required>

    <button type="submit">Add Project</button>
</form>

</body>
</html>
