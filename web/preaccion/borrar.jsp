<%-- 
    Document   : borrar
    Created on : 05-may-2017, 22:40:24
    Author     : joaquin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../emergente.jsp" %>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="../style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <!--Esta página abre el segundo modal en cuanto se carga sin perder la ifnormación del id
        -Al aceptar el modal se redirigirá a la página "borrarPro.jsp"* y allí se procesará la sentencia
        -Al cancelar el modal se cierra volviendo al "index.jsp"*
        (*)Se redirige a estas páginas desde el código de "emergente.jsp"-->
    <body onload="abrirModal2()">
        <!--Importar código de javascript-->
        <script src="../emergente.js"></script>
    </body>
</html>
