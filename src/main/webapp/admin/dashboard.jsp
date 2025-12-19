<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-dark bg-dark">
  <div class="container">
    <span class="navbar-brand">Admin Panel</span>
    <a href="../index.jsp" class="btn btn-outline-light btn-sm">Home</a>
  </div>
</nav>

<div class="container mt-5">
  <h2 class="text-center mb-4">Admin Dashboard</h2>

  <div class="row text-center">

    <div class="col-md-4">
      <a href="view-contacts.jsp" class="btn btn-primary w-100 mb-3">
        View Contact Requests
      </a>
    </div>

    <div class="col-md-4">
      <a href="view-newsletter.jsp" class="btn btn-success w-100 mb-3">
        View Newsletter Subscribers
      </a>
    </div>

    <div class="col-md-4">
      <a href="add-project.jsp" class="btn btn-warning w-100 mb-3">
        Add New Project
      </a>
    </div>

  </div>
</div>

</body>
</html>
