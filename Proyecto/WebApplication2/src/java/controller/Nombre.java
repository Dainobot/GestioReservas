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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/nombre")
public class Nombre extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Configura tus credenciales de la base de datos
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/reservas";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String tarjeta = request.getParameter("tarjeta");
        String cvv = request.getParameter("cvv");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        
        // Guardar los parámetros en la sesión
        request.getSession().setAttribute("nombre", nombre);
        request.getSession().setAttribute("tarjeta", tarjeta);
        request.getSession().setAttribute("cvv", cvv);
        request.getSession().setAttribute("telefono", telefono);
        request.getSession().setAttribute("email", email);
        
        // Guardar los datos en la base de datos
        try {
            // Establecer la conexión a la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
            
            // Consulta SQL para insertar datos en la tabla informacion_cliente
            String sql = "INSERT INTO informacion_cliente (nombre, tarjeta, cvv, telefono, email) VALUES (?, ?, ?, ?, ?)";
            
            // Crear una sentencia preparada para evitar problemas de seguridad por inyección SQL
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, nombre);
            statement.setString(2, tarjeta);
            statement.setString(3, cvv);
            statement.setString(4, telefono);
            statement.setString(5, email);
            
            // Ejecutar la consulta para insertar los datos
            statement.executeUpdate();
            
            // Cerrar la conexión y redireccionar
            statement.close();
            connection.close();
            
            // Redireccionar a DatosServlet
            response.sendRedirect("DatosServlet");
        } catch (SQLException e) {
            e.printStackTrace(); // Manejar la excepción de alguna forma (por ejemplo, registrándola o mostrándola)
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Nombre.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
