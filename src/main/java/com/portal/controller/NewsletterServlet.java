package com.portal.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.portal.util.DBConnection;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/subscribe")
public class NewsletterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        String email = req.getParameter("email");

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO newsletter_subscribers(email) VALUES (?)"
            );
            ps.setString(1, email);
            ps.executeUpdate();

            res.sendRedirect("index.jsp?sub=success");
        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("index.jsp?sub=error");
        }
    }
}
