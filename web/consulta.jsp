<%-- 
    Document   : consulta
    Created on : 12-03-2022, 04:54:55 AM
    Author     : Ascencio
--%>
<%@include file="ConexionJSP.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UDB_VIRTUAL_WEB</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  href="./Componentes/css/bootstrap.min.css" rel="stylesheet">
        <script src="./Componentes/js/jquery.js"></script>
        <script src="./Componentes/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="row col-md-7">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Telefono</th>
                        <th>Operaciones</th>
                    </tr>
                </thead>
                <tbody>
                    <% st = conn.prepareStatement("select * from Empleados");
                        rs = st.executeQuery();
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString("nombre")%></td>
                        <td><%=rs.getString("apellidos")%></td>
                        <td><%=rs.getString("telefono")%></td>
                        <td><a class="btn btn-danger"
                               href='eliminar.jsp?id=<%=rs.getString("codigo")%>'>Eliminar</a></td>
                    </tr>
                    <%
                        }
                        conn.close();
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
