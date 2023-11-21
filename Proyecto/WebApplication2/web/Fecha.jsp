<%-- 
    Document   : Fecha
    Created on : 6 nov. 2023, 08:58:18
    Author     : ET36
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Styles/Reservar.css" />
        <title>Hotel Machi</title>
    </head>
    <body style="background-image: url(Vista2.jpg); background-color: rgba(0,0,0,0.7); background-size: cover">
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
                <form action="index.jsp" method="POST">
                    <INPUT TYPE="submit" VALUE="RESERVAS" class="nav">
                </form>

            </div>
        </header>
        <div class="contenedor"">
            <h2 style="font-size: 50px;">Fecha</h2>
            <div id="back">
                <form action="diahorario" METHOD="POST">

                    <div class="contenedora">
                        <input type="date"  class="calendario" name="dia" required />
                        <input type="time" class="calendario" name="horario" required />
                        <input type="submit" style="">
                    </div>
                </form>
            </div>
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
