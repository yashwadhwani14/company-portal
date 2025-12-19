package com.portal.dao;

import java.sql.*;
import java.util.*;
import com.portal.model.Project;
import com.portal.util.DBConnection;

public class ProjectDAO {

    public List<Project> getAllProjects() {
        List<Project> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM projects");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Project p = new Project();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setDescription(rs.getString("description"));
                p.setImage(rs.getString("image"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
