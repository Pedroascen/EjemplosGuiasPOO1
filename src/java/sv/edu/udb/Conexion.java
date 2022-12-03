/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.edu.udb;

import java.sql.*;

/**
 *
 * @author Ascencio
 */
public class Conexion {

    private Connection conexion = null;
    private Statement s = null;
    private ResultSet rs = null;
    private String query = "";

    //Contructor 
    public Conexion() throws SQLException {
        try {
            //obtenemos el driver de para mysql 
            Class.forName("com.mysql.jdbc.Driver");
            // Se obtiene una conexión con la base de datos. 2 
            conexion = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/guia8_poo1?useSSL=false", "root", "");
            // Permite ejecutar sentencias SQL sin parámetros 
            s = conexion.createStatement();
        } catch (ClassNotFoundException e1) {
            //Error si no puedo leer el driver de MySQL 
            System.out.println("ERROR:No encuentro el driver de la BD: " + e1.getMessage());
        }
    }

    //Metodo que permite obtener los valores del resulset 
    public ResultSet getRs() {
        return rs;
    }
    //Metodo que permite fijar la tabla resultado de la pregunta 
    //SQL realizada 

    public void setRs(String consulta) {
        try {
            this.rs = s.executeQuery(consulta);
        } catch (SQLException e2) {
            System.out.println("ERROR:Fallo en SQL: " + e2.getMessage());
        }
    }
    //Metodo que recibe un sql como parametro que sea un update,insert.delete 

    public void setQuery(String query) throws SQLException {
        this.s.executeUpdate(query);
    }
    //Metodo que cierra la conexion 

    public void cerrarConexion() throws SQLException {
        conexion.close();
    }

    //metodo para cierre del resulset
    public static void close(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException sqle) {
            System.out.print("Error al cerrar el resultSet: " + sqle);
            sqle.printStackTrace();
        }
    }

    //cierre del prepare statement
    public static void close(Statement stmt) {
        try {
            if (stmt != null) {
                stmt.close();
            }
        } catch (SQLException sqle) {
            System.out.print("Error al cerrar Statement: " + sqle);
            sqle.printStackTrace();
        }
    }

    //cierre de la conexion
    public static void close(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException sqle) {
            System.out.print("Error al cerrar Connection: " + sqle);
            sqle.printStackTrace();
        }
    }
}
