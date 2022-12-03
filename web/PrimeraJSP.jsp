<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.*"%>
<%! String titulo = "UDB_VIRTUAL";
    String cadena = "Primer Pagina";%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=titulo%></title>
        <link  href="./Componentes/css/bootstrap.min.css" rel="stylesheet">
        <script src="./Componentes/js/jquery.js"></script>
        <script src="./Componentes/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            //Obteniendo la fecha actual
            Date fechaActual = new Date();
            //Formateando la fecha
            DateFormat formatoHora = new SimpleDateFormat("HH:mm:ss");
            DateFormat formatoFecha = new SimpleDateFormat("dd/MM/yyyy");
        %>
        <div class="container">
            <div class="row">
                <h3><%=titulo%></h3>
            </div>
            <div class="card">
                <div class="card-header"><%=cadena%></div>
                <div class="card-body">
                    <%out.println(new Date());%>
                </div>
            </div>
            <div class="card">
                <div class="card-header"><%=cadena%></div>
                <div class="card-body">
                    <p><%="La fecha actual es :"+ formatoFecha.format(fechaActual)%></p>
                    <p><%= "La hora actual es: " + formatoHora.format(fechaActual)%></p>
                    <p><%= "El tamaño de la cadena ‘"+ cadena + "’ es:" + cadena.length()%></p>
                </div>
            </div>
        </div>
    </body>
</html>
</body>
</html>
