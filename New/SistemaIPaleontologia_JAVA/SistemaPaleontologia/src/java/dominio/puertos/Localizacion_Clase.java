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
public class Localizacion_Clase {
    
    private int idLocalizacion;
    private String calle;
    private int numero;
    private int utmeste;
    private int utmnorte;
    private int idParroquia;

    public Localizacion_Clase(int idLocalizacion, String calle, int numero, int utmeste, int utmnorte, int idParroquia) {
        this.idLocalizacion = idLocalizacion;
        this.calle = calle;
        this.numero = numero;
        this.utmeste = utmeste;
        this.utmnorte = utmnorte;
        this.idParroquia = idParroquia;
    }
    
    public Localizacion_Clase(String calle, int numero, int utmeste, int utmnorte, int idParroquia) {
        this.calle = calle;
        this.numero = numero;
        this.utmeste = utmeste;
        this.utmnorte = utmnorte;
        this.idParroquia = idParroquia;
    }

    public int getIdLocalizacion() {
        return idLocalizacion;
    }

    public void setIdLocalizacion(int idLocalizacion) {
        this.idLocalizacion = idLocalizacion;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getUtmeste() {
        return utmeste;
    }

    public void setUtmeste(int utmeste) {
        this.utmeste = utmeste;
    }

    public int getUtmnorte() {
        return utmnorte;
    }

    public void setUtmnorte(int utmnorte) {
        this.utmnorte = utmnorte;
    }

    public int getIdParroquia() {
        return idParroquia;
    }

    public void setIdParroquia(int idParroquia) {
        this.idParroquia = idParroquia;
    }
    
    
    
    
}
