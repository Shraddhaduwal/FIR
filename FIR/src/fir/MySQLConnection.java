/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fir;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Lenovo
 */
public class MySQLConnection {

    public static Connection conn;

    public static Connection connectDb() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fir", "root", "");
            java.lang.System.out.println("Database Connected Successfully !");
            return conn;
        } catch (ClassNotFoundException | SQLException e) {
            java.lang.System.out.println(e.getMessage());
            JOptionPane.showMessageDialog(null, "Database cannot be connected !");
            java.lang.System.exit(0);
        }
        return null;
    }
}
