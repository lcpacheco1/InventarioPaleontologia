/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio.puertos;

/**
 *
 * @author Andy
 */
public interface ListaLocalizacion {
    void insertLocalizacion(String calle, int numero, int UTMeste, int UTMnorte, int idParroquia);
}
