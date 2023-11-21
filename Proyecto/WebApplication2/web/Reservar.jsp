<%-- 
    Document   : Reservar
    Created on : 24 oct. 2023, 10:59:32
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
    <body>
        <div class="pagina">
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
            <main>
                <h1>Selecciona tu tipo de habitacion</h1>
                <div class="seleccion">
                    <form action="seleccion" METHOD="POST">
                        <div class="tipo">                                 
                            <h2>Low Cost 50 USD</h2>
                            <input type="submit" STYLE="color: rgba(0, 0, 0, 0)" value="LOW COST" name="seleccion" class="img4">
                        </div>
                        <div class="tipo">
                            <h2>Premiun 150 USD</h2>
                            <input type="submit" STYLE="color: rgba(0, 0, 0, 0)" value="PREMIUN" name="seleccion" class="img4-5">
                        </div>
                    </form>
                </div>
            </main>
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
        </div>
    </body>
</html>
