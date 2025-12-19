package com.portal.controller;

import java.io.IOException;
import java.sql.Connection;

import com.portal.util.DBConnection;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/testdb")
public class TestDBServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        Connection con = DBConnection.getConnection();
        if (con != null) {
            res.getWriter().print("Database Connected Successfully!");
        } else {
            res.getWriter().print("Database Connection Failed!");
        }
    }
}
