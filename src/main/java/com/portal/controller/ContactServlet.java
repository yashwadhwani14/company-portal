package com.portal.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.portal.util.DBConnection;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String mobile = req.getParameter("mobile");
        String city = req.getParameter("city");

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO contact_requests(full_name,email,mobile,city) VALUES (?,?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, mobile);
            ps.setString(4, city);

            ps.executeUpdate();

            res.sendRedirect("contact.jsp?msg=success");
        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("contact.jsp?msg=error");
        }
    }
}
