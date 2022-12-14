<%-- 
    Document   : login
    Created on : 12-03-2022, 04:02:52 PM
    Author     : Ascencio
--%>
<%@page session="true" language="java" import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio de sesión</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  href="./Componentes/css/bootstrap.min.css" rel="stylesheet">
        <script src="./Componentes/js/jquery.js"></script>
        <script src="./Componentes/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4">
                    <h2>Inicio de sesión</h2>
                    <%
                        if (request.getParameter("error") != null) {
                    %>
                    <div class="alert alert-danger">
                        <strong>Error!</strong> <%=request.getParameter("error")%> 
                        <br>
                    </div>
                    <% }//Fin del if%>
                    <form action="checklogin.jsp" method="post">
                        <div class="form-group">
                            <label for="usuario">Usuario</label>
                            <input type="text" class="form-control" id="usuario" placehold-
                                   er="Usuario" name="usuario" required>
                        </div>
                        <div class="form-group">
                            <label for="clave">Password:</label>
                            <input type="password" class="form-control" id="clave" placeholder="Password" name="clave" required>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Iniciar sesión</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>