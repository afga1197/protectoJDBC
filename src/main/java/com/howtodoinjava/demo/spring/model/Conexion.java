package com.howtodoinjava.demo.spring.model;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    
    protected Connection conexion;
    protected Statement estam=null;
    protected PreparedStatement pre=null;
    
    public Connection Conectar(){
        try {
            conexion = null;
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/clima", "root", "root");
            estam = (Statement) conexion.createStatement();
            System.out.printf("Conectado");
            return conexion;
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
