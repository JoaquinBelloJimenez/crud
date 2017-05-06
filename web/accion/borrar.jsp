<%-- 
    Document   : borrarPro
    Created on : 04-may-2017, 19:37:19
    Author     : joaquin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            //Código en java para iniciar la conexión con la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:4048/crud", "root", "root");
            Statement s = conexion.createStatement();
            s.execute("DELETE FROM microprocesadores WHERE id=" + request.getParameter("id"));

            s.close();

            //TRas realizar la conexión volver al index.
            String redirectURL = "../index.jsp";
            response.sendRedirect(redirectURL);
        %>	
    </body>
</html>