/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio.puertos;

import java.util.ArrayList;

/**
 *
 * @author Andy
 */
public interface Ficha_Interface {
    
    ArrayList<Object> crear_ficha();
    void eliminar_ficha();
    void modificar_ficha();
    ArrayList<Object> visualizar_ficha();
    
    
    
}
