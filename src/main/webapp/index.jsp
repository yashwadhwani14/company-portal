<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.portal.dao.ProjectDAO" %>
<%@ page import="com.portal.model.Project" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Portal</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
  .project-img {
    height: 200px;
    object-fit: cover;
  }
</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-dark">
  <div class="container">
    <span class="navbar-brand">Company Portal</span>
  </div>
</nav>

<!-- HERO -->
<div class="container text-center mt-5">
  <h1>Welcome to Company Portal</h1>
  <p class="text-muted">We build amazing projects</p>
</div>

<!-- PROJECTS -->
<div class="container mt-5">
  <h2 class="text-center mb-4">Our Projects</h2>

  <%
    ProjectDAO dao = new ProjectDAO();
    List<Project> projects = dao.getAllProjects();
  %>

  <div class="row">
    <%
      for (Project p : projects) {
    %>
      <div class="col-md-4">
        <div class="card mb-4 shadow-sm">

          <img
            src="<%= request.getContextPath() %>/images/<%= p.getImage() %>"
            class="card-img-top project-img"
            alt="Project Image">

          <div class="card-body">
            <h5><%= p.getName() %></h5>
            <p><%= p.getDescription() %></p>
            <button class="btn btn-primary">Read More</button>
          </div>

        </div>
      </div>
    <%
      }
    %>
  </div>
</div>


  <!-- CONTACT SECTION -->
<div class="container mt-5 text-center">
  <h2 class="mb-4">Contact Us</h2>
  <p class="text-muted">Have a question or want to work with us?</p>

  <a href="contact.jsp" class="btn btn-success btn-lg">
    Go to Contact Form
  </a>
</div>
  
</div>

<!-- NEWSLETTER -->
<!-- NEWSLETTER -->
<div class="container mt-5 mb-5 text-center">
  <h2 class="mb-4">Subscribe to our Newsletter</h2>

  <%
    String sub = request.getParameter("sub");
    if ("success".equals(sub)) {
  %>
      <div class="alert alert-success">Subscribed successfully!</div>
  <%
    } else if ("error".equals(sub)) {
  %>
      <div class="alert alert-danger">Already subscribed or error occurred.</div>
  <%
    }
  %>

  <form method="post" action="subscribe" class="d-flex justify-content-center">
    <input name="email" type="email" class="form-control w-50 me-2"
           placeholder="Enter your email" required>
    <button class="btn btn-dark">Subscribe</button>
  </form>
</div>
