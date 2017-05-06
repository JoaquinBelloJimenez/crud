<%-- 
    Document   : crear
    Created on : 04-may-2017, 17:52:14
    Author     : joaquin
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo procesador</title>
    </head>
    <body>
    <%
        //Código en java para iniciar la conexión con la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:4048/crud", "root", "root");
        Statement s = conexion.createStatement();
        ResultSet listado = s.executeQuery("SELECT * FROM microprocesadores");
        
        String marca = request.getParameter("marca");
        String modelo = request.getParameter("modelo");
        String velocidad = String.valueOf(request.getParameter("velocidad"));
        String nnucleos = String.valueOf(request.getParameter("nnucleos"));
        String precio = String.valueOf(request.getParameter("precio"));
        

        request.setCharacterEncoding("UTF-8");
            String insercion = "INSERT INTO `microprocesadores` (`id`, `marca`, `modelo`, `velocidad`, `nnucleos`, `precio`) "
                    + "VALUES (NULL, '"+ marca +"', '"+ modelo +"', '"+ velocidad +"', '"+ nnucleos +"', '"+ precio +"')";
            s.execute(insercion);
            
        conexion.close();
        
            String redirectURL = "../index.jsp";
            response.sendRedirect(redirectURL);
    %>  

</body>
</html>
