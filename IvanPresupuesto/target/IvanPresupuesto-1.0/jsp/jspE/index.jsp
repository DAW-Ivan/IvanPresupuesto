<%-- 
    Document   : index
    Created on : 20-oct-2017, 16:34:35
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../../css/sta.css"/>
    </head>
    <body>
        <%@include file="../../inc/cabecera.inc" %>
        <div>
            <h2>¡Elija su seguro!</h2>
            <p class="negra">Por favor elegir seguro de edificio, seguro de contenido, o ambos, marcando las casillas de abajo</p>
            <form action="../../eleccion" method="post">
                <p><label>¿Qué tipo de seguro quiere?</label></p>
                <p>
                    <input type="checkbox" name="edificio" value="edificio" id="edificio" checked/>
                    <label for="edificio">Seguro de edificios</label>
                </p>
                <p>
                    <input type="checkbox" name="contenido" value="contenido" id="contenido" checked/>
                    <label for="contenido">Seguro de contenido</label>
                </p>
                <input type="submit" value="Enviar"/>
            </form>
        </div>
        <%@include file="../../inc/pie.inc"%>
    </body>
</html>
