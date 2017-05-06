<%-- 
    Document   : index
    Created on : 03-may-2017, 21:21:10
    Author     : joaquin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ include file="emergente.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>



        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:4048/crud", "root", "root");
            Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM microprocesadores");
        %>


        <div style="width: 60vw; margin: 15% auto;">
            <!-- Título de la tabla -->
            <h1 class="texto_ventana">Listado de procesadores</h1>
            <!-- Boton de ventana para crear nuevo objeto-->
            <button onclick="abrirModal1()" class="btn btn-primary">Añadir microprocesador</button>
            <table class="table">
                <thead class="thead-inverse">
                <th>id</th> <th>Marca</th> <th>Modelo</th> <th>Velocidad</th> <th>NNucleos</th> <th>Precio</th> <th></th> <th></th>
                </thead>
                <%
                    while (listado.next()) {
                        out.println("<tr><td>");
                        out.println(listado.getString("id") + "</td>");
                        out.println("<td>" + listado.getString("marca") + "</td>");
                        out.println("<td>" + listado.getString("modelo") + "</td>");
                        out.println("<td>" + listado.getString("velocidad") + "</td>");
                        out.println("<td>" + listado.getString("nnucleos") + "</td>");
                        out.println("<td>" + listado.getString("precio") + "</td>");
                %>
                <td>
                    <form method="get" action="preaccion/modificar.jsp">
                        <input type="hidden" name="id" value="<%=listado.getString("id")%>">
                        <input type="hidden" name="marca" value="<%=listado.getString("marca")%>">
                        <input type="hidden" name="modelo" value="<%=listado.getString("modelo")%>">
                        <input type="hidden" name="velocidad" value="<%=listado.getString("velocidad")%>">
                        <input type="hidden" name="nnucleos" value="<%=listado.getString("nnucleos")%>">
                        <input type="hidden" name="precio" value="<%=listado.getString("precio")%>">
                        <button class="btn btn-primary" type="submit"> <span ></span> Modificar</button>
                    </form>
                </td>
                <td>
                    <form method="get" action="preaccion/borrar.jsp">
                        <input type="hidden" name="id" value="<%=listado.getString("id")%>">
                        <button  id="<%=listado.getString("id")%>"  class="btn btn-danger" ><span></span> Eliminar</button>
                    </form>
                </td>
                <%
                    } // cerrando while   
                    conexion.close();
                %>
            </table>
        </div>
        <!--Importar código de javascript-->
        <script src="emergente.js"></script>

    </body>
</html>
