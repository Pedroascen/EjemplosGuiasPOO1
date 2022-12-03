<%-- 
    Document   : cerrarsesion
    Created on : 12-03-2022, 05:00:27 PM
    Author     : Ascencio
--%>

<%@ page session="true" %>
<%
 HttpSession sesionOk = request.getSession();
 sesionOk.invalidate();
%>
<jsp:forward page="login.jsp"/>