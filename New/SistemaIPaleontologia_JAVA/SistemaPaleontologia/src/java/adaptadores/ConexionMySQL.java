/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adaptadores;

import dominio.puertos.DBInterface;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rocio, Liz, Andrés
 */
public class ConexionMySQL implements DBInterface {

    //Conexion con el patron Singleton
    // Propiedades
    private static Connection conn = null;
    private String driver;
    private String url;
    private String usuario;
    private String password;

    // Constructor
    private ConexionMySQL() {

        String url = "jdbc:mysql://localhost:3306/paleontologia";
        String driver = "com.mysql.jdbc.Driver";
        String usuario = "root";
        String password = "";

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    } // Fin constructor

    //Establece conexión a base de datos
    public static Connection getConnection() {
        if (conn == null) {
            new ConexionMySQL();
        }

        return conn;
    } // Fin getConnection

    //Cierra conexión de base de datos
    public void cerrarConexion() {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(ConexionMySQL.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

}
