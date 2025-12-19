package com.portal.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.portal.util.DBConnection;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addProject")
public class AddProjectServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String image = req.getParameter("image");

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO projects(name, description, image) VALUES (?,?,?)"
            );
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, image);
            ps.executeUpdate();

            res.sendRedirect("admin/add-project.jsp?msg=success");
        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("admin/add-project.jsp?msg=error");
        }
    }
}
