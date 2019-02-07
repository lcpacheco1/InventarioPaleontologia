/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adaptadores;

import java.util.Arrays;
import java.util.List;
import dominio.puertos.ListaUsuarios;

/**
 *
 * @author Rocio, Liz, Andrés
 */
public class InicioSesion implements ListaUsuarios{
    private String user;
    private String pass;

    @Override
    public List<String> infoUser() {
        List<String> dat = datos(user, pass);
        
        return Arrays.asList(dat.get(0), dat.get(1));
    }
    
    public List<String> datos(String user, String pass){
        this.user = user;
        this.pass = pass;
        return Arrays.asList(user, pass);
    }
    
//    public String obtainCedula(){
//        this.cedu
//    }
    
}
