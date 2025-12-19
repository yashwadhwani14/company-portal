<!DOCTYPE html>
<html>
<head>
<title>Add Project</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
</head>

<body>
<div class="container mt-5">
  <h2 class="text-center mb-4">Add New Project</h2>

  <form method="post" action="../addProject">

    <div class="mb-3">
      <input name="name" class="form-control" placeholder="Project Name" required>
    </div>

    <div class="mb-3">
      <textarea name="description" class="form-control"
                placeholder="Project Description" required></textarea>
    </div>

    <div class="mb-3">
      <input name="image" class="form-control"
             placeholder="Image file name (e.g. demo.jpg)" required>
    </div>

    <button class="btn btn-success">Add Project</button>
    <a href="admin-dashboard.jsp" class="btn btn-secondary">Back</a>

  </form>
</div>
</body>
</html>