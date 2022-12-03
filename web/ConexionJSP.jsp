<%-- 
    Document   : ConexioJSP con la base de la guia8
    Created on : 12-03-2022, 04:41:11 AM
    Author     : Ascencio
--%>

<%@page language="java" import="java.sql.*"%>
<%!
    //variables de tipo staticas de conexion a mysql
    private static String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static String JDBC_URL = "jdbc:mysql://localhost:3306/guia8_poo1?useSSL=false";
    private static String JDBC_USER = "root";
    private static String JDBC_PASS = "";
    private static Driver driver = null;

%>
<%
    Connection conn = null;
    PreparedStatement st = null;
    ResultSet rs = null;

    //Leemos el driver de Mysql
    Class jdbcDriverClass = Class.forName(JDBC_DRIVER);
    driver = (Driver) jdbcDriverClass.newInstance();
    DriverManager.registerDriver(driver);
  
    // Se obtiene una conexión con la base de datos.
    conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
%>
