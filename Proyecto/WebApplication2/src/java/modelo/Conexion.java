package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private static Connection con;
    private static String bd = "reservas";
    private static String usuario = "root";
    private static String contrasena = "";
    private static String url = "jdbc:mysql://localhost:3306/" + bd;

    // Método para abrir la conexión
    public static Connection abrir() throws SQLException {
        try {
            // Cargar el controlador JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("se pudo conectar a la base de datos exitosamente");

            // Establecer la conexión
            con = DriverManager.getConnection(url, usuario, contrasena);
        } catch (ClassNotFoundException e) {
            System.out.println("Error: No se pudo cargar el controlador JDBC");
            throw new SQLException("Error en la conexión", e);
        }
        return con;
    }

    // Método para cerrar la conexión
    public static void cerrar() {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
            }
        } catch (SQLException e) {
            System.out.println("Error: No se logró cerrar la conexión");
        }
    }
}