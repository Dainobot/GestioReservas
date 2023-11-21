<%-- 
    Document   : index
    Created on : 20 oct. 2023, 08:12:59
    Author     : ET36
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Styles/Style.css" />

        <title>Hotel Machi</title>
    </head>
    <body>
        <div id="bac">
            <header>
                <form action="iniciarSesion.jsp" method="POST">
                    <INPUT TYPE="submit" VALUE="Iniciar Sesion" id="iniciar">
                </form>
            </header>
            <div id="princ">
                <div class="head">
                    <h2 class="titulo">Hotel Machi</h2>        
                    <p>
                        La gente olvidará lo que has dicho, olvidará lo que hiciste, pero no olvidará nunca la habitacion que reservaste.
                    </p>
                    <div id="scroll">
                        <a href="#bajar"><i><img src="scroll.png" style="margin-top: 15%; filter: brightness(4);"class="img3"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="reserva">
            <div id="imagen">
                <img src="Vista1.jpg" class="img2">
            </div>
            <div id="reservar">
                <form action="Reservar.jsp" method="POST">
                    <INPUT TYPE="submit" VALUE="Reservar" id="boton-R">
                </form>
            </div>
        </div>
        <div class="foot">
            <div id="logo">
                <img src="LogoMachi.png" class="img3">
            </div>
            <div id="marca">
                <h3>©HotelMachi Derechos Reservados
                </h3>
            </div>
            <div id="redes">
                <a id="bajar" target="_blank" href="https://www.instagram.com/homehotelba/?hl=es-la"><img src="Instagramlogo.png" class="img"></a>
                <a target="_blank" href="https://twitter.com/HotelesCom"><img src="Ximagen.png"class="img"></a>
                <a target="_blank" href="Nosotros.png"><img src="HuevoDePascua.png"class="img"></a>
            </div>
        </div>   
    </body>
</html> 
