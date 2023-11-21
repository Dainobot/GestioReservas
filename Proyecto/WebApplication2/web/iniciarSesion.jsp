<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <div class="contenedor">
            <h2 style="font-size: 50px;">Login</h2>
            <div id="back">
                <form action="inicio" id="loginForm" METHOD="POST">

                    <div class="iniciar">                  
                        <INPUT type="text" name="nombre" placeholder="Nombre" class="input">
                        <INPUT type="password" name="contrasena" placeholder="Contraseña" class="input">
                        <INPUT TYPE="submit" VALUE="Login" id="A">
                    </div>
                </form>
                <a href="Registrar.jsp" style="text-decoration: none;">No estas Registrado, Registrate!</a>
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
