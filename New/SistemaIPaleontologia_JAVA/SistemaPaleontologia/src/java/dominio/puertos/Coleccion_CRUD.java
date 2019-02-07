/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio.puertos;

import java.io.IOException;
import java.sql.SQLException;

/**
 *
 * @author Andy
 */
public class Coleccion_CRUD {
    
    private final Coleccion_BD loc_Repo;
    private final ListaColeccion request;

    public Coleccion_CRUD(Coleccion_BD loc_Repo, ListaColeccion request) {
        this.loc_Repo = loc_Repo;
        this.request = request;
    }

    
    
    public int guardar_localizacion(Coleccion_Clase coleccion_gui) throws IOException, SQLException, ClassNotFoundException{
        int x = 0;
        int id=loc_Repo.obtIdColec();
        Coleccion_Clase colDB=new Coleccion_Clase(id, coleccion_gui.getNombre(), coleccion_gui.getPropietario(),
                coleccion_gui.getControl(), coleccion_gui.getCurador());
        
        
        
       x= request.insertColeccion(colDB);
       
       return x;
        
    }
    
}
