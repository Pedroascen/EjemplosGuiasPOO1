<%-- 
    Document   : ingresaremp
    Created on : 12-03-2022, 05:33:30 AM
    Author     : Ascencio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Empleados</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link  href="./Componentes/css/bootstrap.min.css" rel="stylesheet">
        <script src="./Componentes/js/jquery.js"></script>
        <script src="./Componentes/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h3>Empleados</h3>
            </div>
            <div class="row col-md-5" >
                <form role="form" action="ingresar.jsp" method="POST">
                    <div class="col-md-10">
                        <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Campos requeridos</strong></div>
                        <div class="form-group">
                            <label for="nombre">Nombres:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="nombre" id="nombre"
                                       placeholder="Ingresa el nombre" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellidos:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="apellido" name="apellido"
                                       placeholder="Ingresa el apellido" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="telefono">Telefono:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="telefono" name="telefono"
                                       placeholder="Ingresa el telefono" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-info" value="Guardar">
                    </div>
                </form>
                <%-- Verificando si la variable resultado esta vacia--%>
                <% if (request.getParameter("resultado") != null) {
                %>
                <div class="alert alert-success col-md-10">
                    <b> <%= request.getParameter("resultado")%></b> 
                </div>
                <% } %> 
            </div>

            <!--notese el uso de jsp:include -->
            <jsp:include page="consulta.jsp" />

        </div> <!-- /container -->

    </body>
</html>
