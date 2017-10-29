<%-- 
    Document   : visualizar
    Created on : 22-oct-2017, 20:05:50
    Author     : Ivan
--%>

<%@page import="es.albarregas.beans.Contenidos"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="es.albarregas.beans.Edificios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../../css/sta.css"/>
    </head>
    <body>
        <%@include file="../../inc/cabecera.inc"%>
        <div>
            <h2>Detalles de su póliza</h2>
            <%
                HttpSession sesion=request.getSession();
                Edificios ed=(Edificios)sesion.getAttribute("edificio");
                Contenidos con=(Contenidos)sesion.getAttribute("contenido");
                DecimalFormat df=new DecimalFormat("#.##");
                boolean e=false,c=false;
                if(ed!=null){
                    e=true;
                    %>
                    <div class="float">
                    <h3>Edificio</h3>
                    <p>Tipo de edificio: <%=ed.getTipo()%></p>
                    <p>Habitaciones: <%=ed.getHabitaciones()%></p>
                    <p>Fecha de construcción: <%=ed.getFecha()%></p>
                    <p>Tipo de construcción: <%=ed.getMaterial()%></p>
                    <p>Valor de mercado: <%=ed.getValor()%></p>
                    <p class="res">Prima: <%=df.format(ed.getPrima())%>€</p>
                    </div>
                    <%
                }
                if(con!=null){
                    c=true;
                    %>
                    <div class="float">
                    <h3>Contenido</h3>
                    <%
                        if(con.getDaños()){
                            %><p>Daños cubiertos</p><%
                        }
                    %>
                    <p>Cantidad: <%=con.getCantidad()%></p>
                    <p>Franquicia: <%=con.getFranquicia()%></p>
                    <p class="res">Prima: <%=df.format(con.getPrima())%>€</p>
                    </div>
                    <%
                }
                if(c && e){
                    %>
                    <div class="float">
                        <h3 class="clear">Total: <%=df.format(con.getPrima()+ed.getPrima())%>€</h3>
                    </div>
                    <%
                }
// NO ELIMINAS LA SESIÓN
            %>
        </div>    
            <%-- TA FALTA UN ENLACE DE VUELTA AL INICIO --%>
        <%@include file="../../inc/pie.inc"%>
    </body>
</html>
