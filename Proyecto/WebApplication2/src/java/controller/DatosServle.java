/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DatosServlet")
public class DatosServle extends HttpServlet {
    private static final long serialVersionUID = 1L;
    // Establece tus credenciales y detalles de la base de datos
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/reservas";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String seleccion = (String) request.getSession().getAttribute("seleccion");
        String dia = (String) request.getSession().getAttribute("dia");
        String horario = (String) request.getSession().getAttribute("horario");
        String nombre = (String) request.getSession().getAttribute("nombre");
        
        Map<String, String> datos = new HashMap<>();
        datos.put("seleccion", seleccion);
        datos.put("dia", dia);
        datos.put("horario", horario);
        datos.put("nombre", nombre);
        
        // Guardar en la base de datos
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            String query = "INSERT INTO reserva (seleccion, dia, horario, nombre) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(query);
            
            stmt.setString(1, seleccion);
            stmt.setString(2, dia);
            stmt.setString(3, horario);
            stmt.setString(4, nombre);
            
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Manejo de errores: imprime la traza en la consola, puedes modificar esto
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace(); // Manejo de errores: imprime la traza en la consola, puedes modificar esto
            }
        }
        
        request.setAttribute("datos", datos);
        request.getRequestDispatcher("Reservas.jsp").forward(request, response);
    }
}
