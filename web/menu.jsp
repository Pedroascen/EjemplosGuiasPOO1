<%-- 
    Document   : menu
    Created on : 12-03-2022, 04:39:06 PM
    Author     : Ascencio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String usuario = "";
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Es obligatorio identificarse"/>
</jsp:forward>
<%
    } else {
        usuario = (String) sesionOk.getAttribute("usuario");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu principal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  href="./Componentes/css/bootstrap.min.css" rel="stylesheet">
        <script src="./Componentes/js/jquery.js"></script>
        <script src="./Componentes/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Ejemplo POO</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ingresaremp.jsp">Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cerrarsesion.jsp"><%=usuario%> (cerrar sesión)</a></li>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h3>PROCESO DE IDENTIFICACIÓN</h3>
            <p>
            <h5>Menú de administración</h5>
            <b>Usuario activo:</b> <%=usuario%>
        </p>
    </div>
</body>
</html>

