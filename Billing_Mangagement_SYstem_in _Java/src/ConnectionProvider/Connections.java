/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConnectionProvider;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Kwizera
 */
public class Connections {
    public static Connection getcon(){
        
    try{
       Class.forName("com.mysql.jdbc.Driver");

        Connection conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/bms","root","");
        return conn;
    }   catch (Exception ex) {
           return null;
        }
    
    }
    
}
