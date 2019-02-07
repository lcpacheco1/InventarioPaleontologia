/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adaptadores;

import dominio.puertos.Ficha_BD;
import dominio.puertos.Ficha_Clase;
import dominio.puertos.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Andy
 */
public class DAOFicha implements Ficha_BD{
    Connection conn = ConexionMySQL.getConnection();
    
    ArrayList<Ficha_Clase> listaFicha;
    
    public DAOFicha() {
        listaFicha = new ArrayList<Ficha_Clase>();
        String info;
        
        try {
            Statement consulta = conn.createStatement();

            info = "SELECT cedula, nombres, apellidos, correo, contrasenia, rol "
                    + "FROM `usuario`";
            ResultSet rs = consulta.executeQuery(info);
            while (rs.next()) {
//                listaFicha.add(new Usuario(rs.getString(1), rs.getString(2), 
//                        rs.getString(3),rs.getString(4),rs.getString(5),
//                        rs.getString(6)));
                //cedula=rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println("Error al obtener clientes");
            e.printStackTrace();
        }
    }

    @Override
    public Ficha_Clase obtainFicha() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
