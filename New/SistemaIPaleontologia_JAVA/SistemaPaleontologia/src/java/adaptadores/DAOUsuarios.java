package adaptadores;

import dominio.puertos.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import dominio.puertos.UsuarioBD;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rocio, Liz, Andrés
 */
public class DAOUsuarios implements UsuarioBD {

    Connection conn = ConexionMySQL.getConnection();
    private String correo;
    private String pass;
    List<Usuario> listUsers;
    Usuario us = new Usuario();
    Usuario usR = new Usuario();

    public DAOUsuarios() {
        listUsers = new ArrayList<Usuario>();
        String info;
        try {
            Statement consulta = conn.createStatement();
            //Obtener todos los usuarios
            info = "SELECT cedula, nombres, apellidos, correo, contrasenia, rol "
                    + "FROM `usuario`";
            ResultSet rs = consulta.executeQuery(info);
            while (rs.next()) {
                listUsers.add(new Usuario(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
            System.out.println("Error al obtener clientes");
            e.printStackTrace();
        }
    }

    @Override
    public Usuario obtainUser(String correo, String password) {
        this.correo=correo;
        this.pass=password;
        Optional<Usuario> optUser = listUsers.stream()
                .filter(u -> correo.equals(u.getCorreo())
                && password.equals(u.getContrasenia()))
                .findFirst();

        return optUser.isPresent() ? optUser.get() : null;
    }

    @Override
    public Usuario obtainCed() {
        Statement consulta;
        String cedUser;
        try {
            consulta = conn.createStatement();
            //Obtener cedula de usuario por usuario y contraseña
            cedUser = "SELECT cedula, nombres, apellidos FROM `usuario` "
                    + "WHERE correo ='"+correo+"' "
                    + "AND contrasenia='"+pass+"'";
            ResultSet rsC = consulta.executeQuery(cedUser);
            while (rsC.next()) {
                us = new Usuario(rsC.getString(1),rsC.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
        return us;
    }
    
    public Usuario obtenerUCed(String cedula){
        Statement consulta;
        String cedUser;
        try {
            consulta = conn.createStatement();
            //Obtener cedula de usuario por usuario y contraseña
            cedUser = "SELECT cedula, nombres, apellidos, correo, contrasenia,rol "
                    + "FROM `usuario` WHERE cedula='"+cedula+"'";
            ResultSet rsC = consulta.executeQuery(cedUser);
            while (rsC.next()) {
                us = new Usuario(rsC.getString(1),rsC.getString(2),rsC.getString(3),
                        rsC.getString(4),rsC.getString(5),rsC.getString(6));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
        return us;
        
        
//        if (rol.equals("Administrador")) {
//            response.sendRedirect("/SistemaPaleontologia/Templates/internas/AdminReg.jsp?ced="+cedu+"");
//        }else if(rol.equals("Usuario")){
//            response.sendRedirect("/SistemaPaleontologia/Templates/internas/UserReg.jsp?ced="+cedu+"");
//        }else if (correo.equals("") || pass.equals("")) {
//            response.sendRedirect("index.jsp");
//        }
    }
}
