<%-- 
    Document   : contenido
    Created on : 20-oct-2017, 16:41:31
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
            <h2>Detalles de la póliza de contenidos</h2>
            <p>Proporcione infromación sobre su contenido en el formulario, y haga clic en Envíar</p>
            <form action="../../contenido" method="post">
                <p>
                    <label for="daños">Cubrir daños accidentales</label>
                    <input type="checkbox" name="dan" value="dan" id="daños" checked/>
                </p>
                <p>
                    <label>Cantidad que quiere asegurar</label>
                    <select name="cantidad">
                        <option value="10000">10.000</option>
                        <option value="20000">20.000</option>
                        <option value="30000">30.000</option>
                        <option value="50000">50.000</option>
                        <option value="100000">100.000</option>
                    </select>
                </p>
                <p>
                    <label>Franquicia</label>&nbsp;&nbsp;
                    <input type="radio" name="franquicia" value="0" id="no" checked/>
                    <label for="no">Ninguna</label>
                    <input type="radio" name="franquicia" value="500" id="500"/>
                    <label for="500">500</label>
                    <input type="radio" name="franquicia" value="1000" id="1000"/>
                    <label for="1000">1.000</label>
                </p>
                <input type="hidden" name="jsp" value="jsp"/>
                <input type="submit" name="enviar" value="Enviar"/>
            </form>
        </div>
        <%@include file="../../inc/pie.inc"%>
    </body>
</html>
