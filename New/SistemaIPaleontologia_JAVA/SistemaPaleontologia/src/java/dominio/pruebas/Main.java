/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio.pruebas;

import adaptadores.InicioSesion;
import dominio.puertos.LoginUser;
import adaptadores.DAOUsuarios;
import adaptadores.SMSLogeo;
import java.util.List;

/**
 *
 * @author Rocio, Liz, Andrés
 */
public class Main {
    public static void main(String[] args) {
        InicioSesion request = new InicioSesion();
        request.datos("lgcp@gmail.com", "liz12345");
        SMSLogeo display = new SMSLogeo();
        DAOUsuarios repository = new DAOUsuarios();
        
        //System.out.println("hiiii %s"+repository.getCedula());
        
        LoginUser login = new LoginUser(display, repository, request);
        
        
        
        login.validate();
    }
 
}
