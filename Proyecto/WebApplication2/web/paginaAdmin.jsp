<%@ page import="java.sql.*" %>
<%@ page import="modelo.Conexion" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Styles/Reservar.css" />
        <title>Hotel Machi</title>
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
                <form action="index.jsp" method="POST">
                    <INPUT TYPE="submit" VALUE="RESERVAS" class="nav">
                </form>

            </div>
        </header>
        <div style="justify-content: center; display: flex; align-items: center; flex-direction: column; margin-top: 200px;">
            <%
                Connection conexion = Conexion.abrir();

                if (conexion != null) {
                    try {
                        Statement statement = conexion.createStatement();
                        String query = "SELECT * FROM reserva";
                        ResultSet resultSet = statement.executeQuery(query);

                        out.println("<table border='1'>");
                        out.println("<tr><th>ID</th><th>Fecha</th><th>Usuario</th><th>Habitación</th></tr>");

                        while (resultSet.next()) {
                            out.println("<tr>");
                            out.println("<td>" + resultSet.getInt("reserva_id") + "</td>");
                            out.println("<td>" + resultSet.getString("dia") + "</td>");
                            out.println("<td>" + resultSet.getString("nombre") + "</td>");
                            out.println("<td>" + resultSet.getString("seleccion") + "</td>");
                            out.println("</tr>");
                        }

                        out.println("</table>");

                        conexion.close();
                    } catch (SQLException e) {
                        out.println("Error al ejecutar la consulta: " + e.getMessage());
                    }
                } else {
                    out.println("Error al conectar a la base de datos");
                }
            %>
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
