/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio.puertos;

import adaptadores.ConexionMySQL;
import java.sql.Connection;

/**
 *
 * @author Rocio, Liz, Andrés
 */
public interface DBInterface {
    //Interfaz para la conexión de la BD
    static Connection getConnection(){
        Connection conn;
        return ConexionMySQL.getConnection();
    }
    
}
