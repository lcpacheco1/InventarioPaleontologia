/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adaptadores;

import dominio.puertos.Localizacion_BD;
import dominio.puertos.Localizacion_Clase;
import dominio.puertos.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Andy
 */
public class DAOLocalizacion implements Localizacion_BD {

    Connection conn = ConexionMySQL.getConnection();

    //ArrayList<Localizacion_Clase> listaLocalizacion;
    int id;

    public DAOLocalizacion() {
    }

    @Override
    public void insert_Localizacion(Localizacion_Clase localizacion) {
        int x = 0;
        Statement consulta;
        try {
            consulta = conn.createStatement();
            String sentencia;
            sentencia = "INSERT INTO `paleontologia`.`localizacion` "
                    + "VALUES(" + id + ",'" + localizacion.getCalle() + "','" + localizacion.getNumero() + "','" + localizacion.getUtmeste() + "','"
                    + localizacion.getUtmnorte() + "'," + localizacion.getIdParroquia()+");";
            x = consulta.executeUpdate(sentencia);
        } catch (SQLException ex) {
            Logger.getLogger(DAOLocalizacion.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public int obtIdLoc() {
        try {
            Statement consulta = conn.createStatement();
            String Sentencia = "SELECT MAX(idLocalizacion) FROM localizacion";
            ResultSet rs = consulta.executeQuery(Sentencia);
            while (rs.next()) {
                id = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOLocalizacion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }
}
