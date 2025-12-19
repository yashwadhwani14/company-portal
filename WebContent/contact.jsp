<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">Company Portal</a>
  </div>
</nav>

<!-- CONTACT FORM -->
<div class="container mt-5">
  <h2 class="text-center mb-4">Contact Us</h2>

  <!-- SUCCESS / ERROR MESSAGE -->
  <%
    String msg = request.getParameter("msg");
    if ("success".equals(msg)) {
  %>
      <div class="alert alert-success text-center">
        Your message has been submitted successfully!
      </div>
  <%
    } else if ("error".equals(msg)) {
  %>
      <div class="alert alert-danger text-center">
        Something went wrong. Please try again.
      </div>
  <%
    }
  %>

  <form class="row g-3" method="post" action="contact">

    <div class="col-md-6">
      <input name="name" class="form-control" placeholder="Full Name" required>
    </div>

    <div class="col-md-6">
      <input name="email" type="email" class="form-control" placeholder="Email Address" required>
    </div>

    <div class="col-md-6">
      <input name="mobile" class="form-control" placeholder="Mobile Number" required>
    </div>

    <div class="col-md-6">
      <input name="city" class="form-control" placeholder="City" required>
    </div>

    <div class="col-12 text-center">
      <button class="btn btn-success px-5">Submit</button>
    </div>

  </form>
</div>

</body>
</html>
