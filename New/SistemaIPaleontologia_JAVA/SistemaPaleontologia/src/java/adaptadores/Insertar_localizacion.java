/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adaptadores;

import dominio.puertos.ListaLocalizacion;
import dominio.puertos.Localizacion_Clase;
import dominio.puertos.Localizacion_Interface;

/**
 *
 * @author Andy
 */
public class Insertar_localizacion implements ListaLocalizacion{
    
    private Localizacion_Clase Loc_CL;

    public Insertar_localizacion() {
    }

    public Localizacion_Clase getLoc_CL() {
        return Loc_CL;
    }

    public void setLoc_CL(Localizacion_Clase Loc_CL) {
        this.Loc_CL = Loc_CL;
    }
    
    

    @Override
    public void insertLocalizacion(String calle, int numero, int UTMeste, int UTMnorte, int idParroquia) {
        System.out.println(calle);
        System.out.println(Loc_CL.getCalle());
        Loc_CL.setCalle(calle);
        Loc_CL.setNumero(numero);
        Loc_CL.setUtmeste(UTMeste);
        Loc_CL.setUtmnorte(idParroquia);
    }

    
    
}
