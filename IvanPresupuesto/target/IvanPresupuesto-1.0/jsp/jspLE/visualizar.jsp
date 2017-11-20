<%-- 
    Document   : visualizar
    Created on : 22-oct-2017, 20:05:50
    Author     : Ivan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado JSTL</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/sta.css"/>
    </head>
    <body>
        <c:set var="edificio" scope="page" value="${edificio}"/>
        <%@include file="../../inc/cabecera.inc"%>
        <div class="contenido">
            <h2>Detalles de su póliza</h2>
            <c:if test="${not empty edificio}">
                <div class="float">
                    <h3>Edificio</h3>
                    <p>Tipo de edificio: ${edificio.tipo}</p>
                    <p>Habitaciones: ${edificio.habitaciones}</p>
                    <p>Fecha de construcción: ${edificio.fecha}</p>
                    <p>Tipo de construcción: ${edificio.material}</p>
                    <p>Valor de mercado: ${edificio.valor}</p>
                    <p class="res">Prima: <fmt:formatNumber type="currency" value="${edificio.prima}"/></p>
                </div>
                <c:set var="primaed" value="true"/>
            </c:if>
            <c:set var="contenido" scope="page" value="${contenido}"/>
            <c:if test="${not empty contenido}">
                <div class="float">
                    <h3>Contenido</h3>
                    <c:if test="${not empty contenido.daños}">
                        <p>Daños cubiertos</p>
                    </c:if>
                    <p>Cantidad: ${contenido.cantidad}</p>
                    <p>Franquicia: ${contenido.franquicia}</p>
                    <p class="res">Prima: <fmt:formatNumber type="currency" value="${contenido.prima}"/></p>
                </div>
                    <c:set var="primacon" value="true"/>
            </c:if>
            <c:if test="${primaed && primacon}">
                <div class="float">
                        <h3 class="clear">Total: <fmt:formatNumber type="currency" value="${edificio.prima+contenido.prima}"/></h3>
                    </div>
            </c:if>
            <div class="enl">
                <a href="<%=request.getContextPath()%>/index.html">Volver</a>
            </div>
        </div>
        <%session.invalidate();%>
        <%@include file="../../inc/pie.inc"%>
    </body>
</html>
