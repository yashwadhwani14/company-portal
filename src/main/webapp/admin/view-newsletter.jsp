<%@ page import="java.sql.*" %>
<%@ page import="com.portal.util.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<title>Newsletter Subscribers</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
</head>

<body>
<div class="container mt-5">
  <h2 class="mb-4 text-center">Newsletter Subscribers</h2>

  <table class="table table-bordered">
    <tr>
      <th>ID</th>
      <th>Email</th>
    </tr>

    <%
      Connection con = DBConnection.getConnection();
      PreparedStatement ps = con.prepareStatement(
        "SELECT * FROM newsletter_subscribers"
      );
      ResultSet rs = ps.executeQuery();

      while (rs.next()) {
    %>
      <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("email") %></td>
      </tr>
    <%
      }
    %>
  </table>

  <a href="admin-dashboard.jsp" class="btn btn-secondary">Back</a>
</div>
</body>
</html>
