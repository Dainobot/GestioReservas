package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

@WebServlet("/inicio")
public class Inicio extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Configura estos valores según tu entorno de base de datos
    private static final String URL = "jdbc:mysql://localhost:3306/reservas";
    private static final String USUARIO_DB = "root";
    private static final String CONTRASENA_DB = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String nombre = request.getParameter("nombre");
        String contrasena = request.getParameter("contrasena");

        if (nombre != null && contrasena != null && !nombre.isEmpty() && !contrasena.isEmpty()) {
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                // Establece la conexión con la base de datos
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(URL, USUARIO_DB, CONTRASENA_DB);

                // Prepara la consulta SQL para verificar las credenciales
                String sql = "SELECT * FROM usuarios WHERE nombre = ? AND contrasena = ?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, nombre);
                stmt.setString(2, contrasena);

                // Ejecuta la consulta
                rs = stmt.executeQuery();

                if (rs.next()) {
                    HttpSession session = request.getSession(); // Obtiene la sesión actual o crea una nueva si no existe
                    session.setAttribute("nombreUsuario", nombre); // Guarda el nombre de usuario en la sesión

                    if (nombre.equals("admin") && contrasena.equals("admin")) {
                        // Credenciales son admin/admin, redirige a la página de administrador
                        response.sendRedirect("paginaAdmin.jsp");
                    } else {
                        // Credenciales válidas, inicio de sesión exitoso para usuarios no admin
                        response.sendRedirect("index.jsp");
                    }
                } else {
                    String mensaje = "Credenciales Inválidas";
                    // Credenciales inválidas
                    response.sendRedirect("iniciarSesion.jsp");
                    JOptionPane.showMessageDialog(null, mensaje, "Alerta", JOptionPane.WARNING_MESSAGE);
                }
            } catch (ClassNotFoundException | SQLException e) {
                // Manejo de excepciones
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
                        "Error al conectar con la base de datos");
            } finally {
                // Cierra la conexión y la declaración
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stmt != null) {
                        stmt.close();
                    }
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            // Parámetros inválidos
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Nombre y contraseña son obligatorios");
        }
    }
}
