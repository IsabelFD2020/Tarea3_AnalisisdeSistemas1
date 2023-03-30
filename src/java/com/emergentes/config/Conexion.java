
package com.emergentes.config;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

public class Conexion {
    Connection con;
    public Connection Conexion(){
        
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/numeros_primos", "root", "");
            
        }catch(Exception e){
            
        }
        
        return con;
    }
}
