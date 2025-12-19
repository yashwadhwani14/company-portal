<%@ page import="java.sql.*" %>
<%@ page import="com.portal.util.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<title>Contact Requests</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
</head>

<body>
<div class="container mt-5">
  <h2 class="mb-4 text-center">Contact Requests</h2>

  <table class="table table-bordered">
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Mobile</th>
      <th>City</th>
    </tr>

    <%
      Connection con = DBConnection.getConnection();
      PreparedStatement ps = con.prepareStatement(
        "SELECT * FROM contact_requests"
      );
      ResultSet rs = ps.executeQuery();

      while (rs.next()) {
    %>
      <tr>
        <td><%= rs.getString("full_name") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("mobile") %></td>
        <td><%= rs.getString("city") %></td>
      </tr>
    <%
      }
    %>
  </table>

  <a href="admin-dashboard.jsp" class="btn btn-secondary">Back</a>
</div>
</body>
</html>
