<%-- 
    Document   : edificio
    Created on : 20-oct-2017, 16:41:12
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../../css/sta.css"
    </head>
    <body>
        <%@include file="../../inc/cabecera.inc" %>
        <div>
            <h2>Detalles de la póliza de edificios</h2>
            <p>Proporcione información de dónde vive usted en el siguiente formulario, y haga clic en Enviar</p>
            <form action="../../edificio" method="post">
                <p>
                    <label>Tipo de edificio:</label>
                    <select name="tipo">
                        <option value="piso">Piso</option>
                        <option value="casa">Casa</option>
                        <option value="adosado">Adosado</option>
                        <option value="duplex">Duplex</option>
                        <option value="chalet">Chalet</option>
                    </select>
                </p>
                <p>
                    <label>Número de habitaciones:</label>
                    <select name="habitaciones">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5 o más</option>
                    </select>
                </p>
                <p>
                    <label>Fecha de construcción:</label>
                    <select name="fecha">
                        <option value="1949">&lt;1950</option>
                        <option value="1950">1950 - 1990</option>
                        <option value="1991">1991 - 2005</option>
                        <option value="2006">2006 - 2015</option>
                        <option value="2016">&gt;2015</option>
                    </select>
                </p>
                <p>
                    <label>Tipo de construcción:</label>
                    <input type="radio" name="material" value="madera" id="madera" checked/>
                    <label for="madera">Madera</label>
                    <input type="radio" name="material" value="hormigon" id="hormigon"/>
                    <label for="hormigon">Hormigón</label>
                </p>
                <p>
                    <label>Valor estimado en el mercado:</label>
                    <select name="valor">
                        <option value="25000">&lt;25.000</option>
                        <option value="50001">50.001 - 80.000</option>
                        <option value="80001">80.001 - 100.000</option>
                        <option value="100001">100.001 - 150.000</option>
                        <option value="150.001">&gt;150.000</option>
                    </select>
                </p>
                <input type="hidden" name="jsp" value="jsp"/>
                <input type="submit" name="enviar" value="Enviar"/>
            </form>
        </div>
        <%@include file="../../inc/pie.inc"%>
    </body>
</html>
