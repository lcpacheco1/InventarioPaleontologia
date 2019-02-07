/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio.puertos;

import adaptadores.DAOLocalizacion;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Andy
 */
public class Localizacion_CRUD {
    
    private final Localizacion_BD loc_Repo;
    private final ListaLocalizacion request;

    public Localizacion_CRUD(Localizacion_BD loc_Repo, ListaLocalizacion request) {
        this.loc_Repo = loc_Repo;
        this.request = request;
    }
    
    public void guardar_localizacion(Localizacion_Clase localizacion_gui) throws IOException, SQLException, ClassNotFoundException{
        int x = 0;
        int id=loc_Repo.obtIdLoc();
        Localizacion_Clase locDB= new Localizacion_Clase(id,localizacion_gui.getCalle(),
                localizacion_gui.getNumero(), localizacion_gui.getUtmeste(), localizacion_gui.getUtmnorte(), 
                localizacion_gui.getIdParroquia());
      
       request.insertLocalizacion(locDB.getCalle(), locDB.getNumero(), 
               locDB.getUtmeste(), locDB.getUtmnorte(), locDB.getIdParroquia());
    } 
}
