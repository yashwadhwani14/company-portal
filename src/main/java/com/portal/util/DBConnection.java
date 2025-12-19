package com.portal.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = System.getenv("DB_URL");
            String user = System.getenv("DB_USER");
            String pass = System.getenv("DB_PASS");

            con = DriverManager.getConnection(url, user, pass);
            System.out.println("DB Connected Successfully");

        } catch (Exception e) {
            System.out.println("DB Connection FAILED");
            e.printStackTrace();
        }
        return con;
    }
}
