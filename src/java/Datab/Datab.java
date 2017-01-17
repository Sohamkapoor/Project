/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datab;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author sohamkapoor
 */
public class Datab {
       public String DB_URL = "jdbc:mysql://localhost:3306/gas";

    //  Database credentials
    public String USER = "root";
    public String PASS = "";
    public Connection conn;
    // public PreparedStatement stmt;
    public Statement st;
    public ResultSet rs;

    public Datab() {
        try {
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            st = conn.createStatement();
         // Execute SQL query
            //stmt = conn.prepareStatement();
        } catch (Exception e) {
            System.out.println(e.getClass());
        }
    }
}
