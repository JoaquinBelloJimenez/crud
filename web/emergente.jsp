<%-- 
    Document   : emergente
    Created on : 04-may-2017, 20:05:53
    Author     : joaquin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>



        <!-- Ventana emergente(modal) que muestra formulario para crear nuevo objeto en la base de datos -->
        <!-- La ventana -->
        <div id="myModal" class="modal">

            <!-- Contenido de la ventana -->
            <div class="modal-content">
                <!-- <span class="close">&times;</span> -->
                <h1 class="texto_ventana">Nuevo procesador</h1>
                <table>
                    <tr>
                        <td>Marca</td> <td>Modelo</td> <td>Velocidad</td> <td>NNucleos</td> <td>Precio</td>
                    </tr>
                    <div style="width: 60vw;">
                        <form name="nuevo_micro" method="get" action="accion/crear.jsp">
                            <tr><td><input type="text" required  name="marca" maxlength="30" size="30"></td>
                                <td><input type="text" required name="modelo" maxlength="30" size="30"></td>
                                <td><input type="number" required name="velocidad" maxlength="10" size="10"></td>
                                <td><input type="number" required name="nnucleos" maxlength="5" size="5"></td>
                                <td><input type="number" required name="precio" maxlength="10" size="10"></td>
                            <tr><td><button class="btn btn-primary" type="submit" value="Añadir">Añadir</button>
                                    <button id="btn_salir" class="btn btn-danger" type="reset">Salir</button></td></tr>
                        </form>
                    </div>
            </div>
        </table>
    </div>
</div>

<div id="idModal2" class="modal2">
    <div class="modal-content2">
        <h1 class="texto_ventana">AVISO</h1>
        <p style="text-align: center;">¿Desea borrar el elemento seleccionado?</p>
        <div style="display: flex;">
            <!--Este formulario envía el id obtenido de la fila de index a la página de borrado.-->
            <form name="borrar_micro" method="get" action="../accion/borrar.jsp">
                <input id="idBorrar" type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
                <button  type="submit" class="btn btn-danger" >Aceptar</button>
            </form>
            <!--Este formulario te redirige a la página index sin usar ningún valor.-->
            <form action="../index.jsp">
                <button style="float:right;" class="btn btn-danger">Cancelar</button>
            </form>
        </div>
    </div>
</div>

<div id="idModal3" class="modal3">

    <!-- Contenido de la ventana -->
    <div class="modal-content3">
        <!-- <span class="close">&times;</span> -->
        <h1 class="texto_ventana">Editar microprocesador</h1>
        <table>
            <tr>
                <td>Marca</td> <td>Modelo</td> <td>Velocidad</td> <td>NNucleos</td> <td>Precio</td>
            </tr>
            <div style="width: 60vw; display: flex;">
                <form name="nuevo_micro" method="get" action="../accion/modificar.jsp">
                    <tr><input type="hidden"  name="id" value="<%=request.getParameter("id")%>">
                    <td><input type="text" required  name="marca" maxlength="30" size="30" value="<%=request.getParameter("marca")%>"></td>
                    <td><input type="text" required name="modelo" maxlength="30" size="30" value="<%=request.getParameter("modelo")%>"></td>
                    <td><input type="number" required name="velocidad" maxlength="10" size="10" value="<%=request.getParameter("velocidad")%>"></td>
                    <td><input type="number" required name="nnucleos" maxlength="5" size="5"value="<%=request.getParameter("nnucleos")%>"></td>
                    <td><input type="number" required name="precio" maxlength="10" size="10" value="<%=request.getParameter("precio")%>"></td>
                    <tr><td><button class="btn btn-primary" type="submit" value="Añadir">Confirmar</button>
                </form>
                <form action="../index.jsp">
                <button style="float:right;" class="btn btn-danger">Cancelar</button>
            </form>
            </div>
    </div>
        </table>
    </div>
</div>

</body>
</html>
