<%-- 
    Document   : Reservas
    Created on : 18 nov. 2023, 12:58:20
    Author     : Pc Marcelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Hotel Machi</title>
        <link rel="stylesheet" href="Styles/Form.css" />
    </head>
    <body>
        <header>

            <div id="logo">
                <img src="LogoMachi.png" class="img3">
            </div>
            <div class="contenido">

                <form action="index.jsp" method="POST">
                    <INPUT TYPE="submit" VALUE="HOME" class="nav">
                </form>
                <form action="index.jsp" method="POST">
                    <INPUT TYPE="submit" VALUE="SOBRE NOSOTROS" class="nav">
                </form>
                <form action="Reservas.jsp" method="POST">
                    <INPUT TYPE="submit" VALUE="RESERVAS" class="nav">
                </form>

            </div>
        </header>
        <h1>Reservas:</h1>
        <div id="conten">
            <%-- Recuperar los datos enviados desde el servlet --%>
            <%@ page import="java.util.Map" %>
            <%@ page import="java.util.HashMap" %>
            <% Map<String, String> datos = (HashMap<String, String>) request.getAttribute("datos"); %>

            <%-- Mostrar los datos --%>
            <% if (datos != null) {%>
            <p><strong>Selección:</strong> <%= datos.get("seleccion")%></p>
            <p><strong>Día:</strong> <%= datos.get("dia")%></p>
            <p><strong>Horario:</strong> <%= datos.get("horario")%></p>
            <p><strong>Nombre:</strong> <%= datos.get("nombre")%></p>
            <% } else { %>
            <p>No se han recibido datos.</p>
            <% }%>
        </div>
        <footer>

            <div id="marca">
                <h3>©HotelMachi Derechos Reservados
                </h3>
            </div>
            <div id="redes">
                <a target="_blank" href="https://www.instagram.com/homehotelba/?hl=es-la"><img src="Instagramlogo.png" class="img5"></a>
                <a target="_blank" href="https://twitter.com/HotelesCom"><img src="Ximagen.png"class="img5"></a>
                <a target="_blank" href="Nosotros.png"><img src="HuevoDePascua.png"class="img5"></a>
            </div>
        </footer>
    </body>
</html>
